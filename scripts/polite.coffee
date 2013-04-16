module.exports = (robot) ->

  robot.respond /(polite|compliment) (me)?/i, (msg) ->
    msg.http("http://politely.herokuapp.com/random.txt")
      .get() (err, res, compliment) ->
        recipient = msg.message.user.name
        msg.send "" + recipient + ": " + compliment

