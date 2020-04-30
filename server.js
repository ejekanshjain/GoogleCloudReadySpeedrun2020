const express = require('express')
const cors = require('cors')

const app = express()

app.use(cors())
app.use(express.static('public'))

const port = process.env.PORT || 5000

app.listen(port, () => console.log(`Server Started on Port ${port}...`))