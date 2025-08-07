import postgres from "postgres"
import { drizzle } from "drizzle-orm/postgres-js"
import "dotenv/config"

if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable is not defined")
}
const client = postgres(process.env.DATABASE_URL, { prepare: false })
const db = drizzle(client, { casing: "snake_case" })

export { db }
