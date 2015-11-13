# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either 
# returning the string true or false. 
# The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) and 
# for the string to be true each letter must be surrounded by a + symbol. So the string to the left would be false. 
# The string will not be empty and will have at least one letter. 

def SimpleSymbols(str)
  arr = str.split('')
  state = true
  
  arr.each_index { |index| 
    case arr[index]
      when /[a-z]/i  
        if arr[index-1]!= '+' or arr[index+1] != '+'   
          state = false
        else 
          arr[index]
        end 
    end
  }
  return state 
end

  
puts SimpleSymbols("+c+=+d+")
  


#D: case character
#D:    when /[a-z]/i
#D:        arr1[index - 1] == '+'