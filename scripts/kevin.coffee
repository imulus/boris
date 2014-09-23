module.exports = (robot) ->
  robot.respond /(.+)*kevin/ig, (msg) ->
    msg.send("http://stream1.gifsoup.com/view/80759/home-alone-kevin-o.gif")
