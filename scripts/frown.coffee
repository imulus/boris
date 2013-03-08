module.exports = (robot) ->
  robot.respond /frown( me)?$/i, (msg) ->
    msg.send "https://imulus.campfirenow.com/room/489449/uploads/4183687/frown.jpg"
