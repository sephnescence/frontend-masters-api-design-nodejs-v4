const express = require('express')

const app = express()

app.get('/', (req, res) => {
    console.log('Hello from express')
    res.status(200) // As opposed to res.statusCode = 200
    res.json({ // As opposed to res.end()
        message: 'Hello from express test'
    })
})

module.exports = app