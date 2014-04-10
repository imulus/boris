module.exports = (robot) ->
  robot.hear /.*(shoon)/i, (msg) ->
    msg.send("http://i.imgur.com/HA6V0.jpg")
