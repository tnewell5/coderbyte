# have the function DivisionStringified(num1,num2) take both parameters being passed, divide num1 by num2, 
# and return the result as a string with properly formatted commas. 
# If an answer is only 3 digits long, return the number with no commas (ie. 2 / 3 should output "1"). 
# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345". 
# D: instead, reverse the string and iterate over each element
# if index % 3 == 0 then return arr[index] + ","
# else return arr[index]


def DivisionStringified(num1,num2)

result = num1 / num2
arr = result.to_s.reverse.chars
# 7654321
main_string = ''
  arr.each_index do |index|
    # if index divided by 3 has a remainder of 2
    if index % 3 == 2
      main_string += arr[index] + ","
    else
      main_string += arr[index]
    end
  end
    if main_string[-1] != ','
      return main_string.reverse
    else
      return main_string.reverse[1..-1]
    end
end 
  
#puts DivisionStringified(123456789,10000)
puts DivisionStringified(1234567875,10000)
puts DivisionStringified(2,3)