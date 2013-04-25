Morale = require "../lib/morale"
time_ago_in_words = require "../lib/time_ago_in_words"

emojiFor = (value) ->
  switch true
    when value > 90 then ":horse:"
    when value > 60 then ":thumbsup:"
    when value > 30 then ":ok_hand:"
    when value > 10 then ":thumbsdown:"
    else ":shit:"

sendMorale = (msg, recent=false) ->
  msg.http('http://toms-morale.herokuapp.com/morale.json')
     .get() (err, res, body) ->
        {value, updated} = Morale.fromJSON(body)
        emoji = emojiFor(value)

        if recent
          msg.send "Tom's morale is now #{value}%. #{emoji}"
        else
          msg.send "Tom's morale is currently #{value}%. #{emoji} (updated #{time_ago_in_words(updated)})"


module.exports = (robot) ->
  robot.router.post "/hubot/morale", (req, res) ->
    value = req.body.morale
    emoji = emojiFor(value)
    room = "Bullshit"
    message = "Tom's morale was just updated to #{value}%. #{emoji}"
    robot.messageRoom(room, message)
    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end 'Thanks\n'

  robot.respond /(set|update) morale to (.*)/i, (msg) ->
    value = parseInt(msg.match[2])
    return if isNaN(value)

    msg.http('http://toms-morale.herokuapp.com/')
       .header("Content-type", "application/json")
       .post(JSON.stringify({'morale': value})) (err, res, body) ->
         sendMorale(msg, true)

  robot.hear /.*morale\??$/gi, (msg) -> sendMorale(msg)
