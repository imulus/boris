# Computer, load up celery man
module.exports = (robot) ->
  robot.hear /celery/i, (msg) ->
    msg.send("https://github.com/taylorsmith/gifs/raw/master/celery-man.gif")
