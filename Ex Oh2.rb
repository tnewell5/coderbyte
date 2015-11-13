# Have the function ExOh(str) take the str parameter being passed and return the string true if there is an equal number of x's and o's, 
# otherwise return the string false. Only these two letters will be entered in the string, no punctuation or numbers. 
# For example: if str is "xooxxxxooxo" then the output should return false because there are 6 x's and 5 o's.

def ExOh(str)
    arr = str.chars
    count_x = 0
    count_o = 0
    
    arr.each do |letter|
        if letter == 'x'
            count_x += 1
        elsif letter =='o'
            count_o += 1
        end
    end
    return count_x == count_o
end

puts ExOh('xooxxxxooxo')
puts ExOh('xoxo')