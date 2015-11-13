# Have the function PrimeTime(num) take the num parameter being passed and 
# return the string true if the parameter is a prime number, otherwise return the string false. 
# The range will be between 1 and 2^16.

def PrimeTime(num)
    divider = 2
    result = true
    until divider == num 
        if num % divider == 0
            result = false
        end
        divider += 1
    end
    return result
end

puts PrimeTime(11)
puts PrimeTime(12)