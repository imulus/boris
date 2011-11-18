# Flip a table
#

images = [
  "https://github.com/taylorsmith/gifs/raw/master/flip-table-chang.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table2.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table3.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table4.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table5.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table6.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table7.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table8.gif",
  "https://github.com/taylorsmith/gifs/raw/master/flip-table9.gif"
]

module.exports = (robot) ->
  robot.hear /flip table/i, (msg) ->
    msg.send msg.random images
