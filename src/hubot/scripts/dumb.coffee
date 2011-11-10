module.exports = (robot) ->
  robot.hear /.*(so dumb)/i, (msg) ->
    msg.send("http://i573.photobucket.com/albums/ss174/amw4896/so-dumb.gif")


