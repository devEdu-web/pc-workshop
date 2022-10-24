import app from "./app";
import http from 'node:http'
import dotenv from 'dotenv'

dotenv.config()

const PORT = process.env.PORT || 5000
const server = http.createServer(app)

server.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`)
})