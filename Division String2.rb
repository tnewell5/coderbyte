# have the function DivisionStringified(num1,num2) take both parameters being passed, divide num1 by num2, and 
# return the result as a string with properly formatted commas. If an answer is only 3 digits long, 
# return the number with no commas (ie. 2 / 3 should output "1"). For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345". 

def DivisionStringified(num1,num2)
    result = num1/num2
    string_result = result.to_s.reverse
    #return string_result
    
    # creates an array of numbers called 'arr':
    arr = string_result.chars
    # creates string called 'str1':
    str1 = ''
    # for each index of a number in 'arr', if index divided by 3 has a remainder of 2, push a comma onto the new array 'arr1'
    arr.each_index do |index|
        if index % 3 == 2
            str1 += arr[index]
            str1 += ','
        else
            str1 += arr[index]
        end
    end
        if str1[-1] == ','
            return str1[0..-2].reverse
        else
            return str1.reverse
        end
    #return str1.reverse
end

puts DivisionStringified(123456789,10000)
puts DivisionStringified(123456789878,10000)
puts DivisionStringified(2215,3)
puts DivisionStringified(3,2)