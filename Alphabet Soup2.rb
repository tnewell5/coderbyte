# Have the function AlphabetSoup(str) take the str string parameter being passed and 
# return the string with the letters in alphabetical order (ie. hello becomes ehllo). 
# Assume numbers and punctuation symbols will not be included in the string. 

def AlphabetSoup(str)
    str.chars.sort.join
end

puts AlphabetSoup('hello')