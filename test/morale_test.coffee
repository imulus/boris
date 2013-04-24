require 'should'

robot = require('./support/robot')()
wat = require('../scripts/morale')(robot)

describe "morale", ->
  it "triggered for updating", ->
    robot.triggers_message_for("update morale to 15").should.equal true
    robot.triggers_message_for("set morale to 15").should.equal true
