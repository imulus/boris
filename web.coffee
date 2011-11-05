express = require("express")
port    = process.env.PORT or 3000
web     = express.createServer(express.logger())

web.get "/", (request, response) ->
  response.send "Boris Lives"

web.listen port, ->
  console.log "Listening on " + port
