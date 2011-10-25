Bot = require './bot'

boris = new Bot
  subdomain: 'imulus'
  token:     'a5f31260a9e1bd3559e651ce2a8c12f4a52de65a'
  name:      'Boris'
  id:        1028103
  room_id:   444159

boris.hear /boris/i, =>
  boris.speak "Yes?"

boris.hear /celery man/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/celery-man.gif" 

boris.hear /no touching/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/no-touching.gif"

boris.hear /nom/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/nom-nom-nom.gif"

boris.hear /awesome/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/youre-awesome.gif"

boris.hear /deal with it/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/deal-with-it-sheep.gif"

boris.hear /cool story bro/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/350vk.gif"

boris.hear /get out/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/get-out.gif"

boris.hear /fuck is this/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/qkDqh.gif"

boris.hear /fuck was that/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/qkDqh.gif"

boris.hear /whatever/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/what-fucking-ever.gif"

boris.hear /you mad/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/you-mad.gif"

boris.hear /yum/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/yum.gif"

boris.hear /who gives a shit/i, =>
  boris.speak "https://github.com/taylorsmith/gifs/raw/master/who-gives-a-shit.gif" 

boris.listen()
