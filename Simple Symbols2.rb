# Have the function SimpleSymbols(str) take the str parameter being passed and determine if it is an acceptable sequence by either returning the string true or false. 
# The str parameter will be composed of + and = symbols with several letters between them (ie. ++d+===+c++==a) 
# and for the string to be true each letter must be surrounded by a + symbol. 
# So the string to the left would be false. The string will not be empty and will have at least one letter. 

def SimpleSymbols(str)
    result = true
    arr = str.chars
    arr.each_index do |index|
        #if arr[index] == (a..z)
        if arr[index] =~ /[a-z]/i 
            if arr[index-1] != '+' || arr[index+1] !='+'
            result = false
            end
        end
    end
    return result
end

puts SimpleSymbols('+a+')
puts SimpleSymbols('+a')
puts SimpleSymbols('-a+')
puts SimpleSymbols('a+b+')