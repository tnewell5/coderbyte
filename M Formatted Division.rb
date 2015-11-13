# Have the function FormattedDivision(num1,num2) take both parameters being passed, divide num1 by num2, and 
# return the result as a string with properly formatted commas and 4 significant digits after the decimal place. 
# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789". 
# The output must contain a number in the one's place even if it is a zero. 


#split into 2 strings at the '.', then only work with left string and append the right one at the end.
# 

def FormattedDivision(num1,num2)
    
    result = num1/num2.to_f
    arr = result.to_s.split('.')
    arr_main = arr[0]
    str_decimals = arr[1]
    
    #now work with main array: reverse, go over each number digit and test for remaider of mod, then create new array with commas:
    arr_main = arr_main.reverse.chars
    str_new = ''
    arr_main.each_index do |index|
        #if index % 3 == 2
        #    str_new += arr_main[index]
        #    str_new += ','
        #else
        #    str_new += arr_main[index]
        #end
        
        #alternative:
        str_new += arr_main[index]        
        if index % 3 == 2
            str_new += ','
        end
        
    end
    if str_new[-1] ==','
        return str_new[0..-2].reverse + '.' + str_decimals
    else
        return str_new.reverse + '.' + str_decimals
    end
end

puts FormattedDivision(123456789, 10000)
puts FormattedDivision(2541123456789, 10000)
puts FormattedDivision(0, 10000)