# Have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. 
# That is, return the greatest number that evenly goes into both numbers with no remainder. 
# For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. 
# The range for both parameters will be from 1 to 10^3.

# function finds all the divisors for a number with no remainder and returns an array of these numbers:
def All_divs_array(num)
    result_arr = []
    divisor = num
    until divisor == 0 do
        if num % divisor == 0
            result_arr.push(divisor)
        end
        divisor -=1
    end
    return result_arr
end

# function takes in 2 numbers, calls All_divs_array functions to find each number's array of divisors, 
# then compares two arrays and finds the highest matching number, then returns that number:
def Highest_divisor(num1,num2)
    arr_common = []
    arr_common = All_divs_array(num1) & All_divs_array(num2)
    max_divisor = arr_common.sort.pop
    return max_divisor
    
end

puts Highest_divisor(12, 16)
