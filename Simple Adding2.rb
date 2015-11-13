# have the function SimpleAdding(num) add up all the numbers from 1 to num. 
# For the test cases, the parameter num will be any number from 1 to 1000. 

def SimpleAdding(num)
    sum = 0
    num.times do sum = num + sum
    num -= 1
    end
    
    return sum
    
end


puts SimpleAdding(5)