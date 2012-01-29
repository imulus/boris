# Computer, load up celery man
module.exports = (robot) ->
  robot.hear /celery/i, (msg) ->
    msg.send("https://github.com/taylorsmith/gifs/raw/master/celery-man.gif")

  robot.hear /4d3d/i, (msg) ->
    msg.send("http://f.cl.ly/items/3f3f2P2e3D0l09233r3z/4d3d3d.png")

  robot.hear /tayne/i, (msg) ->
    msg.send("https://github.com/taylorsmith/gifs/raw/master/tayne.gif")
