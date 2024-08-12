require('dotenv').config()

const express = require('express')
const cors = require('cors')
const app = express()
const PORT = 3000
const responseRouter = require('./routes/response.router')

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use('/api', responseRouter)
app.use(cors({
  origin: 'http://localhost:8080'
}))

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`)
}) 
