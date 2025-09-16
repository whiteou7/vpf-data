import postgres from "postgres"
import "dotenv/config"

if (!process.env.DATABASE_URL) {
  throw new Error("DATABASE_URL environment variable is not defined")
}
const db = postgres(process.env.DATABASE_URL, { prepare: false })

export { db }
