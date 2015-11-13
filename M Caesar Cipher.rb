# Have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. 
# A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). 
# Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt". 


def CaesarCipher(str,num)
    arr = str.chars
    arr.map! do |letter|
        if letter =~ /[a-z]/i
        Nums_successor(letter,num)
        else
        letter
        end
    end
    return arr.join
end

# calls .succ function num times and returns the successor letter:
def Nums_successor(letter,num)
    1.upto(num) do
        letter = letter.succ
    end
    return letter
end

puts CaesarCipher("Caesar Cipher",2)
puts CaesarCipher("Caesar Cipher",3)