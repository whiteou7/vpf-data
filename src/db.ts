import postgres from "postgres"
import "dotenv/config"

if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable is not defined")
}
const url = process.env.DATABASE_URL

const create = () =>
  postgres(url, {
    prepare: false,
    // recycle connections so ones silently dropped by the Supabase pooler don't hang the pool
    idle_timeout: 20,
    max_lifetime: 60 * 30,
    connect_timeout: 10,
    transform: {
      column: (col) => {
        // convert snake_case to camelCase
        return col.replace(/_([a-z])/g, (_, char) => char.toUpperCase())
      },
    },
  })

let client = create()

// The pooler occasionally never finishes a query, which leaves that connection busy forever;
// once all of them are stuck every request hangs. Probe the pool and rebuild it when it stalls.
const PROBE_MS = 30_000
const PROBE_TIMEOUT_MS = 10_000
setInterval(async () => {
  const current = client
  let timer: NodeJS.Timeout
  const stalled = await Promise.race([
    current`select 1`.then(() => false, () => false),
    new Promise<boolean>((resolve) => { timer = setTimeout(() => resolve(true), PROBE_TIMEOUT_MS) }),
  ])
  clearTimeout(timer!)
  if (stalled && client === current) {
    console.error("DB pool stalled, rebuilding client")
    client = create()
    current.end({ timeout: 1 }).catch(() => {})
  }
}, PROBE_MS).unref()

// stable export that always forwards to the current client (tagged template, db(values), db<T>`...`)
const db = new Proxy(function () {}, {
  apply: (_t, _this, args) => Reflect.apply(client, undefined, args),
  get: (_t, prop) => Reflect.get(client, prop),
}) as unknown as typeof client

export { db }
