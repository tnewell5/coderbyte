# Have the function LongestWord(sen) take the sen parameter being passed and return the largest word in the string. 
# If there are two or more words that are the same length, 
# return the first word from the string with that length. Ignore punctuation and assume sen will not be empty. 

def LongestWord(sen)
    sen.delete! "?!.,-"
    puts sen
    arr = sen.split(' ')
    result =''
    arr.each do |word|
        if word.length > result.length
            result = word
        else
            word
        end
    end
return result  
end

puts LongestWord('hi you')
puts LongestWord('hi how are you!')
puts LongestWord('hi how are you?')