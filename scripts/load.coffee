Load = require "../lib/load"

setLoad = (msg, matchString) ->
  value = matchString.match(/-?\d+/)
  if null == value
    msg.send("I have to set your load to a integer, but I think you fucking knew that jackass.")
  else if value > 100
    msg.send("Yeah, give it that " + value + "%.  No wait, fuck off.")
  else if value < 0
    msg.send("So you're saying you're worthless?")
  else
    msg.http('http://load.imulus.io/')
      .header("Content-type", "application/json")
      .post(JSON.stringify({'name': msg.message.user.name.toLowerCase(),'load': value[0]})) (err, res, body) ->
        msg.send("I'm right on that")

addToTeam = (msg, team) ->
	msg.http('http://load.imulus.io/add_team_member')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'user': msg.message.user.name.toLowerCase(),'team_name': team})) (err, res, body) ->
      	  msg.send("Okay, you're on that team")

removeFromTeam = (msg, team) ->
	msg.http('http://load.imulus.io/remove_team_member')
        .header("Content-type", "application/json")
        .post(JSON.stringify({'user': msg.message.user.name.toLowerCase(),'team_name': team})) (err, res, body) ->
      	  msg.send("Clearly you don't like them, but okay")

retrieveLoads = (msg, callback) ->
  msg.http('http://load.imulus.io/load.json').get() (err, res, body) ->
    loads = []
    loadConfigs = JSON.parse(body)
    for loadConfig, configIdx in loadConfigs
      loads.push(Load.fromResponseObject(loadConfig))
    callback(msg, loads)

displayLoads = (msg,loads) ->
  response = ""
  for load, loadIdx in loads
    response += load.user + ": " + load.value + "\n"
  msg.send(response)

showUserLoad = (msg, loads) ->
  response = ""
  selectedLoad = null
  for load, loadIdx in loads
    if msg.message.user.name.toLowerCase() == load.slack_name
      selectedLoad = load
      break
  if null != selectedLoad
    comment = ""
    if selectedLoad.value > 90
      comment = "My you're busy."
    else if selectedLoad.value < 30
      comment = "Probably should chat to someone about getting more work."
    msg.send("Your load is " + selectedLoad.value + ". " + comment)

module.exports = (robot) ->

  robot.respond /(set|update) my load( to)? (.*)/i, (msg) -> setLoad(msg, msg.match[3])
  robot.respond /add me to (team|group) (.*)/i, (msg) -> addToTeam(msg, msg.match[2])
  robot.respond /add me to( the)? (.*?) (team|group)/i, (msg) -> addToTeam(msg, msg.match[2])
  robot.respond /(remove|delete) me from (team|group) (.*)/i, (msg) -> removeFromTeam(msg, msg.match[3])
  robot.respond /(remove|delete) me from( the)? (.*?) (team|group)/i, (msg) -> removeFromTeam(msg, msg.match[3])
  robot.respond /(load (me|us) up|dump (my|our) load[s]*)/i, (msg) -> retrieveLoads(msg, displayLoads)
  robot.respone /what(\'s| is) my load/i, (msg) -> retrieveLoads(msg, showUserLoad)

