module.exports = (robot) ->
  robot.hear /.*(crossfit)/i, (msg) ->
    msg.send("http://i.imgur.com/a5hcTmr.gif")
