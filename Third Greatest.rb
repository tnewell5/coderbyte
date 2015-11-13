# Have the function ThirdGreatest(strArr) take the array of strings stored in strArr and 
# return the third largest word within in. So for example: if strArr is ["hello", "world", "before", "all"] 
# your output should be world because "before" is 6 letters long, and "hello" and "world" are both 5, 
# but the output should be world because it appeared as the last 5 letter word in the array. 
# If strArr was ["hello", "world", "after", "all"] the output should be after because 
# the first three words are all 5 letters long, so return the last one. 
# The array will have at least three strings and each string will only contain letters. 

def ThirdGreatest(strArr)
    word_count = 0
    max_word = ''
    strArr.each do |word|
        if word.length > word_count
            word_count = word.length
            max_word = word
        end
    end  
    strArr.delete max_word
    
    
    word_count = 0
    max_word = ''
    strArr.each do |word|
        if word.length > word_count
            word_count = word.length
            max_word = word
        end  
    end
    strArr.delete max_word
    
    result = ''
    word_count = 0
    max_word = ''
    strArr.each do |word|
        if word.length > word_count
            word_count = word.length
            result = word
        end    
    end
    return result
end

puts ThirdGreatest(["hello", "world", "after", "all"])
puts ThirdGreatest(["hello", "world", "before", "all"])