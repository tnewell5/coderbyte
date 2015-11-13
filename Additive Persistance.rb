# Have the function AdditivePersistence(num) take the num parameter being passed which will always be 
# a positive integer and return its additive persistence which is the number of times you must add the digits in num 
# until you reach a single digit. 
# For example: if num is 2718 then your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9. 

def AdditivePersistence(num)
    arr_num_length = num.to_s.chars.length
    until arr_num_length == 1 do  
            num = SumLoop(num)
            arr_num_length = num.to_s.chars.length
    end
    return num
end

def SumLoop(num)
    result = 0
    arr = num.to_s.chars
    arr.each do |value|
        result += value.to_i
    end
    return result
end

puts AdditivePersistence(2718)
puts AdditivePersistence(271887)
puts AdditivePersistence(27869887)