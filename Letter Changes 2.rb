# Have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. 
# Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
# Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 

def LetterChanges(str)
    
    arr = str.chars
    str1 = ''
    arr.each do |letter|
        #puts letter.next
        str1 += letter.next
    end
    
    arr1 = str1.chars
    arr1.map! do |letter|
        case letter
        when /[aeiou]/i
            letter.upcase
        else
            letter
        end
    end
      
    return arr1.join
end


puts LetterChanges('hello david')
