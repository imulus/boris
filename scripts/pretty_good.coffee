module.exports = (robot) ->
  robot.hear /.*(pretty good)/i, (msg) ->
    msg.send("http://d24w6bsrhbeh9d.cloudfront.net/photo/225457_460s.jpg")


