# Gob's Program
module.exports = (robot) ->
  robot.respond /gob/i, (msg) ->
    msg.send ("PENUS" for [0...1600]).join(" ")
