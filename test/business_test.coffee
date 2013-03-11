require 'should'

robot =
  regex: null
  hear: (regex, fn) -> @regex = regex
  triggers_message_for: (str) -> @regex.test str

business = require('../scripts/business')(robot)

describe "business", ->
  it "is triggered when funny business is going on", ->
    robot.triggers_message_for("haha business").should.equal true

  it "isn't triggered when there is incidental funny business is going on", ->
    robot.triggers_message_for("something something haha business something").should.equal false

