module.exports = (robot) ->
  robot.hear /.*(wat)/i, (msg) ->
    msg.send("http://i.imgur.com/GxTnK.gif")
