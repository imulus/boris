class Robot
  regex: null
  hear: (regex, fn) -> @regex = regex
  triggers_message_for: (str) -> @regex.test str

module.exports = -> new Robot
