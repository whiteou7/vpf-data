export default defineEventHandler((event) => {
  setResponseStatus(event, 404)
  return {
    success: false,
    message: "API route not found"
  }
})
