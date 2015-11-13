# Have the function SwapII(str) take the str parameter and swap the case of each character. 
# Then, if a word is between two numbers (without separation), switch the places of the two numbers. 
# For example: if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3. 


def SwapII(str)
    arr_words = str.split(" ")
    #puts arr_words
    str_result = []
    arr_words.each do |word|
        if word[0] =~ /[0-9]/ && word[-1] =~ /[0-9]/ && word.length > 1 && word =~ /[a-z]/i
            str_result.push word[-1], word[1..-2], word[0], " "
            #puts str_result
        else
            str_result.push word, " "
        end
    end
    return str_result.join.swapcase
end

puts SwapII('4Hello5')
puts SwapII('4Hello 5')
puts SwapII('4Hello 5howAreyou8')
puts SwapII('45')