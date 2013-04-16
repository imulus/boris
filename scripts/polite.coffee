module.exports = (robot) ->

  robot.respond /(compliment|insult) (.*)?/i, (msg) ->
    msg.http("http://politely.herokuapp.com/random.txt")
      .get() (err, res, compliment) ->
        recipient = escape(msg.match[2])

        if not recipient or recipient is "me"
          name = msg.message.user.name
        else
          name = recipient

        msg.send "" + name + ": " + compliment

