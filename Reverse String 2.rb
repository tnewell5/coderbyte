def FirstReverse1(str)
  return str.reverse
end

puts FirstReverse1('hello')


def FirstReverse2(str)
  arr = str.chars
  return arr.reverse.join
end

puts FirstReverse2('hello')