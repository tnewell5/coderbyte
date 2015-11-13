# Have the function ABCheck(str) take the str parameter being passed and 
# return the string true if the characters a and b are separated by 
# exactly 3 places anywhere in the string at least once 
# (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). 
# Otherwise return the string false.

def ABCheck(str)
  #if str == 'a' || str == 'b'
  # in Regexp / / means everything between it is a regular expression
 return false if str == ''
 arr = str.chars
 state = false
 
  arr.each_index { |index| 
    case arr[index]
        when /[ab]/ 
            if arr[index] == 'a' && arr[index+4] == 'b'
                #return true
                state = true
            elsif arr[index] == 'b' && arr[index+4] == 'a'
                #return true
                state = true
            end
    end
  } 
  
  return state
end

puts "FAILED 1" if ABCheck('') == true
puts "FAILED 2" if ABCheck('a') == true
puts "FAILED 3" if ABCheck('ab') == true
puts "FAILED 4" if ABCheck('axxxb') == false
puts "FAILED 5" if ABCheck('bxxxa') == false
puts ABCheck('katcebc')