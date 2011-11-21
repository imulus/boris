# Flip text
#
flip = (text) ->
  text = text.toLowerCase()
  last = text.length - 1;
  result = ""

  i = last

  while i >= 0
    result += flip_character(text.charAt(i))
    --i

  return "(╯°□°）╯︵ " + result;

flip_character = (char) ->
  if (char == 'a')
  	return '\u0250'

  else if (char == 'b')
  	return 'q'

  else if (char == 'c')
  	return '\u0254'  

  else if (char == 'd')
  	return 'p'

  else if (char == 'e')
  	return '\u01DD'

  else if (char == 'f')
  	return '\u025F' 

  else if (char == 'g')
  	return 'b'

  else if (char == 'h')
  	return '\u0265'

  else if (char == 'i')
  	return '\u0131'

  else if (char == 'j')
  	return '\u0638'

  else if (char == 'k')
  	return '\u029E'

  else if (char == 'l')
  	return '\u05DF'

  else if (char == 'm')
  	return '\u026F'

  else if (char == 'n')
  	return 'u'

  else if (char == 'o')
  	return 'o'

  else if (char == 'p')
  	return 'd'

  else if (char == 'q')
  	return 'b'

  else if (char == 'r')
  	return '\u0279'

  else if (char == 's')
  	return 's'

  else if (char == 't')
  	return '\u0287'


  else if (char == 'u')
  	return 'n'

  else if (char == 'v')
  	return '\u028C'

  else if (char == 'w')
  	return '\u028D'

  else if (char == 'x')
  	return 'x'

  else if (char == 'y')
  	return '\u028E'

  else if (char == 'z')
  	return 'z'

  else if (char == '[')
  	return ']'

  else if (char == ']')
  	return '['

  else if (char == '(')
  	return ')'

  else if (char == ')')
  	return '('

  else if (char == '{')
  	return '}'

  else if (char == '}')
  	return '{'

  else if (char == '?')
  	return '\u00BF'  

  else if (char == '\u00BF')
  	return '?'

  else if (char == '!')
  	return '\u00A1'

  else if (char == "\'")
  	return ','

  else if (char == ',')
  	return "\'"

  else if (char == '.')
  	return '\u02D9'

  else if (char == '_')
  	return '\u203E'

  else if (char == ';')
  	return '\u061B'

  else if (char == '9')
  	return '6'

  else if (char == '6')
  	return '9'

  return char

module.exports = (robot) ->
  robot.hear /flip (.*)/i, (msg) ->
    msg.send flip(msg.match[1]).toString()
