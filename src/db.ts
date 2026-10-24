import postgres from "postgres"
import "dotenv/config"

if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable is not defined")
}
const db = postgres(process.env.DATABASE_URL, {
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

export { db }
