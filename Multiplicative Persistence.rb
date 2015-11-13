# Have the function MultiplicativePersistence(num) take the num parameter being passed which will 
# always be a positive integer and return its multiplicative persistence which is the number of times 
# you must multiply the digits in num until you reach a single digit. For example: if num is 39 then your program should 
# return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and you stop at 4.

def MultiplicativePersistence(num)
    string_length = num.to_s.chars.length
    until string_length == 1 
        num = Multiplication_loop(num) 
        string_length = num.to_s.chars.length
    end
    return num
end

def Multiplication_loop(num)
    result = 1
    arr = num.to_s.chars
    arr.each do |value|
        result *= value.to_i
    end
    return result
end

puts MultiplicativePersistence(39)
puts MultiplicativePersistence(513)
