require 'should'

robot = require('./support/robot')()
business = require('../scripts/business')(robot)

describe "business", ->
  it "is triggered when funny business is going on", ->
    robot.triggers_message_for("haha business").should.equal true
    robot.triggers_message_for("ha ha business").should.equal true
    robot.triggers_message_for("hahahahahahahahahaha business").should.equal true

  it "isn't triggered when serious business is going on", ->
    robot.triggers_message_for("business").should.equal false
    robot.triggers_message_for("serious business").should.equal false
    robot.triggers_message_for("something something business something").should.equal false

