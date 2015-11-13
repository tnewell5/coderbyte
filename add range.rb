# Using the Ruby language, have the function SimpleAdding(num) add up all the numbers from 1 to num. 
# For the test cases, the parameter num will be any number from 1 to 1000. 

def SimpleAdding(num)

  result = 0
  while num > 0
  result = result + num
  num -= 1
  end
  return result 
end

puts SimpleAdding(5)


