module.exports = (robot) ->
  robot.hear /\bwat\b/i, (msg) ->
    msg.send("http://i.imgur.com/GxTnK.gif")

