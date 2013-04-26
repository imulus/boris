images = [
  "http://i.imgur.com/a5hcTmr.gif",
  "http://www.miscupload.com/upload/201908178327439749132927.gif",
  "http://4.bp.blogspot.com/-vHy2JveZFHQ/UI3RcGCYTdI/AAAAAAAABbw/hOS0tkqlClE/s1600/doing-crossfit-did-not-read+partner+fran.gif",
  "http://i.imgur.com/s32cy.gif",
  "http://f.cl.ly/items/14300P3T3V441b0j1F0J/nt-doing-crossfit-did-not-read-eccbc87e4b5ce2fe28308fd9f2a7baf3-73.gif"
]

module.exports = (robot) ->
  robot.hear /.*(crossfit)/i, (msg) ->
    msg.send msg.random images
