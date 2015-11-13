# Have the function TripleDouble(num1,num2) take both parameters being passed, 
# and return 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. 
# For example: if num1 equals 451999277 and num2 equals 41177722899, then return 1 because in the first parameter you have 
# the straight triple 999 and you have a straight double, 99, of the same number in the second parameter. If this isn't the case, return 0

def TripleDouble(num1,num2)
    num1_pass = false
    lucky_num = 0
    arr_chars_num1 = num1.to_s.chars
    arr_chars_num1[0..arr_chars_num1.length-3].each_index do |index|
        if arr_chars_num1[index] == arr_chars_num1[index+1] && arr_chars_num1[index+1] == arr_chars_num1[index+2]
            num1_pass = true
            lucky_num = arr_chars_num1[index]
        end
    end
    
    num2_pass = false
    arr_chars_num2 = num2.to_s.chars
    arr_chars_num2[0..arr_chars_num2.length-2].each_index do |index|
        if arr_chars_num2[index] == arr_chars_num2[index+1] && arr_chars_num2[index] == lucky_num
            num2_pass = true
        end
    end
    
    if num1_pass = num2_pass
        return 1
    else 
        return 0
    end
end

puts TripleDouble(451999277,41177722899)
puts TripleDouble(45999,41177722899)
puts TripleDouble(45999,4117772289)