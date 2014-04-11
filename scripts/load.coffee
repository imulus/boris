
setMorale = (msg, value) ->
	if isNaN(value)
    	msg.send("I have to set your load to a integer, but I think you fucking knew that jackass.")
    else if value > 100
    	msg.send("Yeah, give it that " + value + "%.  No wait, fuck off.")
    else if value < 0
    	msg.send("So you're saying you're worthless?")
    else
      msg.http('http://imulusload.herokuapp.com/')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'name': msg.message.user.name.toLowerCase(),'load': value})) (err, res, body) ->
      	  msg.send("I'm right on that")

addToTeam = (msg, team) ->
	msg.http('http://imulusload.herokuapp.com/add_team_member')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'user': msg.message.user.name.toLowerCase(),'team_name': team})) (err, res, body) ->
      	  msg.send("Okay, you're on that team")

removeFromTeam = (msg, team) ->
	msg.http('http://imulusload.herokuapp.com/remove_team_member')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'user': msg.message.user.name.toLowerCase(),'team_name': team})) (err, res, body) ->
      	  msg.send("Clearly you don't like them, but okay")

module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (.*)/i, (msg) -> setMorale(msg, msg.match[3])
  robot.respond /add me to (team|group) (.*)/i, (msg) -> addToTeam(msg, msg.match[2])
  robot.respond /(remove|delete) me from (team|group) (.*)/i, (msg) -> removeFromTeam(msg, msg.match[3])

