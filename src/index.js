var express = require('express')
var serveStatic = require('serve-static')

var app = express()

app.use(serveStatic('./src/static', { index: ['index.html'] }))
app.listen(3000)