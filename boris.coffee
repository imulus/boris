fs = require 'fs' 

scripts_path = fs.realpathSync('./scripts')

Hubot = require 'hubot'
Boris = Hubot.loadBot 'campfire', scripts_path, 'Boris'

Boris.run()

