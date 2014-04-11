module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (.*)/i, (msg) ->
    value = parseInt(msg.match[3])

    if isNaN(value)
    	msg.send("I have to set your load to a number, but I think you fucking knew that jackass.")
    else if value > 100
    	msg.send("Yeah, give it that " + value + "%.  No wait, fuck off.")
    else if value < 0
    	msg.send("So you're saying you're worthless?")
    else
      msg.http('http://imulusload.herokuapp.com/')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'name': msg.message.user.name.toLowerCase(),'load': value})) (err, res, body) ->
      	  msg.send("I'm right on that")


    