Morale = require "../lib/morale"
time_ago_in_words = require "../lib/time_ago_in_words"

module.exports = (robot) ->
  robot.hear /.*morale/gi, (msg) ->
    msg.http('http://toms-morale.herokuapp.com/morale.json')
       .get() (err, res, body) ->
          morale = Morale.fromJSON(body)
          msg.send "Tom's Morale is currently " + morale.value + "%. (last updated " + time_ago_in_words(morale.updated) + ")"
