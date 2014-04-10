require 'should'

robot = require('./support/robot')()
wat = require('../scripts/wat')(robot)

describe "wat", ->
  it "is only triggered on a proper wat", ->
    robot.triggers_message_for("wat").should.equal true
    robot.triggers_message_for("wat ").should.equal true
    robot.triggers_message_for(" wat").should.equal true
    robot.triggers_message_for(" wat ").should.equal true
    robot.triggers_message_for("WAT").should.equal true

  it "isn't triggered on stupid wats", ->
    robot.triggers_message_for("twat").should.equal false
    robot.triggers_message_for("twats").should.equal false
    robot.triggers_message_for("sdfdwatdfsdf").should.equal false
    robot.triggers_message_for("https://www.youtube.com/watch?v=INscMGmhmX4").should.equal false

