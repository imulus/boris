# Flip a table
#

images = [
  "https://github.com/taylorsmith/gifs/raw/master/flip-table-chang.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table.gif",
  "https://github.com/taylorsmith/gifs/raw/32f0a355d229d52d769237631930534922fb85cb/flip-table2.gif",
  "https://github.com/taylorsmith/gifs/raw/32f0a355d229d52d769237631930534922fb85cb/flip-table3.gif"
]

module.exports = (robot) ->
  robot.hear /.*(flip table|(╯°□°）╯︵ ┻━┻)/i, (msg) ->
    msg.send msg.random images
