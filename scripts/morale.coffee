Morale = require "../lib/morale"
time_ago_in_words = require "../lib/time_ago_in_words"

module.exports = (robot) ->
  robot.hear /.*morale/gi, (msg) ->
    msg.http('http://toms-morale.herokuapp.com/morale.json')
       .get() (err, res, body) ->
          {value, updated} = Morale.fromJSON(body)

          emoji = switch true
                    when value > 90 then ":horse:"
                    when value > 60 then ":thumbsup:"
                    when value > 30 then ":ok_hand:"
                    when value > 10 then ":thumbsdown:"
                    else ":shit:"

          msg.send "Tom's morale is currently " + value + "%. " + emoji + " (updated " + time_ago_in_words(updated) + ")"
