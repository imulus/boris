module.exports = (robot) ->

  robot.respond /(you\'re|you a) (.*)/i, (msg) ->
  	msg.send("Yo mama's " + msg.match[2])