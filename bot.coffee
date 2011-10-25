ranger = require 'ranger'
sys    = require 'sys'
path   = require 'path'
print  = sys.print
puts   = sys.puts
http   = require 'http'
qs     = require 'querystring'
env    = process.env
exec   = require('child_process').exec


class Bot
  constructor: ({@name, @id, @subdomain, @token, @room_id}) ->
    @client = ranger.createClient @subdomain, @token
    @listeners = []
    do @join_room

  join_room: ->
    @client.room @room_id, (room) =>
      room.join()
      room.speak "#{@name} has arrived."

  leave_room: ->
    @client.room @room_id, (room) =>
      room.speak "#{@name} is leaving. See ya."
      room.leave()

  hear: (pattern, command) ->
    @listeners.push pattern: pattern, command: command
    
  clear_listeners: ->  
    @client.room @room_id, (room) ->
      room.stopListening()  
  
  listen: ->
    do @clear_listeners
    @client.room @room_id, (room) =>
      room.listen (message) =>
        for listener in @listeners
          if (message.type is "TextMessage") and (message.userId != @id) and message.body.match listener.pattern
            do listener.command
          
  speak: (message) ->
    @client.room @room_id, (room) ->    
      room.speak message

  exec: (message) ->
    @client.room @room_id, (room) ->
      exec "#{message}", (err, stdout, stderr) ->
        room.speak stdout + stderr
      
module.exports = Bot
