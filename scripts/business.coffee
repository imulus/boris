module.exports = (robot) ->
  robot.hear /^(ha\ ?)+ business/i, (msg) ->
    msg.send("http://media.tumblr.com/tumblr_kvx3m4Kq2I1qziwac.jpg")
