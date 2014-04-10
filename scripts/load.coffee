module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (\d+)/i, (msg) ->
    console.log("Received load message with load " + msg)
    console.log("Sending user: " + msg.message.user.name.toLowerCase()) 
    value = parseInt(msg.match[3])
    return if isNaN(value)

    msg.http('http://imulusload.herokuapp.com/')
      .post({'user': msg.message.user.name.toLowerCase(),'load': value}) (err, res, body) ->
      	msg.send "Okay, I'll update that"