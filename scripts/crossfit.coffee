images = [
  "http://i.imgur.com/a5hcTmr.gif",
  "http://www.miscupload.com/upload/201908178327439749132927.gif",
  "http://4.bp.blogspot.com/-vHy2JveZFHQ/UI3RcGCYTdI/AAAAAAAABbw/hOS0tkqlClE/s1600/doing-crossfit-did-not-read+partner+fran.gif",
  "http://i.imgur.com/s32cy.gif",
  "http://f.cl.ly/items/14300P3T3V441b0j1F0J/nt-doing-crossfit-did-not-read-eccbc87e4b5ce2fe28308fd9f2a7baf3-73.gif",
  "http://www.shockmansion.com/wp-content/myimages/2013/07/716.gif",
  "http://eatwatchrun.com/wp-content/uploads/gif.gif",
  "http://i.imgur.com/HsFq0.gif",
  "http://thechive.files.wordpress.com/2013/01/flying-chest-exercise-crossfit-wtf.gif?w=248",
  "http://i.imgur.com/n8AaEkg.gif",
  "http://i.imgur.com/CX2AryG.gif",
  "http://i.imgur.com/Yzjxi.jpg",
  "http://stream1.gifsoup.com/view1/4308526/crossfit-resilience-o.gif",
  "http://cdn.bleacherreport.net/images_root/slides/photos/003/230/415/ScreenShot2013-06-25at1.26.26PM_crop_650x440.png?1372198387",
  "http://davidkanigan.files.wordpress.com/2012/11/a-funny-gif-cat-push-ups-3.gif?w=300&h=194"
]

module.exports = (robot) ->
  robot.hear /.*(crossfit)/i, (msg) ->
    msg.send msg.random images
