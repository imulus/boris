Morale = require "../lib/morale"
time_ago_in_words = require "../lib/time_ago_in_words"

sendMorale = (msg, updated=false) ->
  msg.http('http://toms-morale.herokuapp.com/morale.json')
     .get() (err, res, body) ->
        {value, updated} = Morale.fromJSON(body)

        emoji = switch true
                  when value > 90 then ":horse:"
                  when value > 60 then ":thumbsup:"
                  when value > 30 then ":ok_hand:"
                  when value > 10 then ":thumbsdown:"
                  else ":shit:"

        if updated
          msg.send "Tom's morale is now #{value}%. #{emoji}"
        else
          msg.send "Tom's morale is currently #{value}%. #{emoji} (updated #{time_ago_in_words(updated)})"


module.exports = (robot) ->
  robot.hear /.*morale/gi, (msg) -> sendMorale(msg)

  robot.respond /set morale to (*.)/i, (msg) ->
    value = parseInt(msg.match[1])
    return unless value

    msg.http('http://toms-morale.herokuapp.com/')
      .post({ morale: value }) (err, res, body) ->
        sendMorale(msg, true)

