module.exports = (robot) ->

  robot.respond /.*you\'re (.*)/i, (msg) ->
  	msg.send("Yo mama's " + msg.match[1] + " SLUGHEAD")