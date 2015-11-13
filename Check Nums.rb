# Using the Ruby language, have the function CheckNums(num1,num2) take both parameters 
# being passed and return the string true if num2 is greater than num1, otherwise return the string false. 
# If the parameter values are equal to each other then return the string -1

def CheckNums(num1, num2)
    #result =''
    if num2 > num1
        result = true
    elsif num1 > num2
        result = false
    else
        result = "-1"
    end
    
    return result
end

puts CheckNums(7, 5)