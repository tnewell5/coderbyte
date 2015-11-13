# have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it 
# (ie. if num = 4, return (4 * 3 * 2 * 1)). 
# For the test cases, the range will be between 1 and 18.

def FirstFactorial(num)
    
    result = 1
    while num > 0 do
    result = result * num 
    num -=1
    end
    
    return result
end

puts FirstFactorial(4)