def FirstFactorial(num)

  # code goes here
  factorial = 1
  
  while num > 0
   factorial =  num * factorial
   num -= 1
  end
  return factorial 
end

puts FirstFactorial(5)

