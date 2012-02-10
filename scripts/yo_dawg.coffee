# Yo dawg, I herd you like yo dawg

module.exports = (robot) ->
  robot.hear /.*(yo dawg)/i, (msg) ->
    msg.send("http://i.imgur.com/HDjhP.jpg")
