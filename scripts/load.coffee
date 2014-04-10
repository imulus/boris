module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (\d+)/i, (msg) ->
    console.log("Sending user: " + msg.message.user.name.toLowerCase()) 
    value = parseInt(msg.match[3])
    console.log("Received load message with load " + value)
    return if isNaN(value)

    msg.http('http://imulusload.herokuapp.com/')
      .post({'name': msg.message.user.name.toLowerCase(),'load': value}) (err, res, body) ->
      	console.log("Error: " + error)
      	console.log("Body: " + body)
      	console.log("Response: " + res)
      	msg.send "Okay, I'll update that"