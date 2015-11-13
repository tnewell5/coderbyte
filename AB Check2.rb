# Have the function ABCheck(str) take the str parameter being passed and 
# return the string true if the characters a and b are separated by exactly 3 places anywhere in the string at least once 
# (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). Otherwise return the string false. 

def ABCheck(str)
    arr = str.chars
    result = false
    arr.each_index do |index|
        if arr[index] == 'a' && arr[index+4] == 'b'
            result = true
        elsif arr[index] == 'b' && arr[index+4] == 'a'
            result = true
        end
    end
    return result
end

puts ABCheck('lane borrowed')
puts ABCheck('ba')
puts ABCheck('aok b')
puts ABCheck('bok a')