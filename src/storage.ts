import { createClient } from "@supabase/supabase-js"

if (!process.env.SUPABASE_URL || !process.env.SUPABASE_KEY) {
  throw new Error("DATABASE_URL environment variable is not defined")
}
const supabaseUrl = process.env.SUPABASE_URL
const supabaseAnonKey = process.env.SUPABASE_KEY

export const storage = createClient(supabaseUrl, supabaseAnonKey).storage
