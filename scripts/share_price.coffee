# Share Price
#
# share price me <ticker> - show today's share price for <ticker>

module.exports = (robot) ->

  robot.respond /share price( me)? (.*)/i, (msg) ->
    ticker = msg.match[2]

    msg
      .http('http://www.google.com/finance/info?infotype=infoquoteall')
      .query
        q: msg.match[2]
      .get() (err, res, body) ->
        body = body.substring(3)
        body = eval(body)
        if body
          msg.send body[0].l + " " + body[0].c
        else
          msg.send "Could not find that stock symbol"
