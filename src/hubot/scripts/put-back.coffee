# Put back the text
#

flip = (text) ->
  last = text.length - 1;
  result = ""

  i = last

  while i >= 0
    result += flip_character(text.charAt(i))
    --i

  return result + " ﻿ノ( ゜-゜ノ)";

flip_character = (char) ->
  if (char == '\u0250')
    return 'a'

  else if (char == 'q')
    return 'b'

  else if (char == '\u0254')
    return 'c'

  else if (char == 'p')
    return 'd'

  else if (char == '\u01DD')
    return 'e'

  else if (char == '\u025F')
    return 'f'

  else if (char == 'b')
    return 'g'

  else if (char == '\u0265')
    return 'h'

  else if (char == '\u0131')
    return 'i'

  else if (char == '\u0638')
    return 'j'

  else if (char == '\u029E')
    return 'k'

  else if (char == '\u05DF')
    return 'l'

  else if (char == '\u026F')
    return 'm'

  else if (char == 'u')
    return 'n'

  else if (char == 'o')
    return 'o'

  else if (char == 'd')
    return 'p'

  else if (char == 'b')
    return 'q'

  else if (char == '\u0279')
    return 'r'

  else if (char == 's')
    return 's'

  else if (char == '\u0287')
    return 't'


  else if (char == 'n')
    return 'u'

  else if (char == '\u028C')
    return 'v'

  else if (char == '\u028D')
    return 'w'

  else if (char == 'x')
    return 'x'

  else if (char == '\u028E')
    return 'y'

  else if (char == 'z')
    return 'z'

  else if (char == '[')
    return ']'

  else if (char == '[')
    return ']'

  else if (char == ')')
    return '('

  else if (char == '(')
    return ')'

  else if (char == '}')
    return '{'

  else if (char == '{')
    return '}'

  else if (char == '\u00BF')
    return '?'

  else if (char == '?')
    return '\u00BF'

  else if (char == '\u00A1')
    return '!'

  else if (char == ",")
    return '\''

  else if (char == '\'')
    return ","

  else if (char == '\u02D9')
    return '.'

  else if (char == '\u203E')
    return '_'

  else if (char == '\u061B')
    return ';'

  else if (char == '6')
    return '9'

  else if (char == '9')
    return '6'

  return char

module.exports = (robot) ->
  robot.hear /"%28\u256F%B0\u25A1%B0\uFF09\u256F\uFE35 (.*)/i, (msg) ->
    msg.send "test"
