module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (\d+)/i, (msg) ->
    value = parseInt(msg.match[3])
    return if isNaN(value)

    msg.http('http://imulusload.herokuapp.com/')
      .header("Content-type", "application/json")
      .post(JSON.stringify({'name': msg.message.user.name.toLowerCase(),'load': value})) (err, res, body) ->
      	msg.send("I'm right on that")