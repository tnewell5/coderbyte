#def LetterChanges(str)

  # Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a).
  # Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 
  
  #solution: break up string into characters by splitting on nothing '' and store in array - Done
  #for each letter in array, replace it with next letter in alphabet and join back into string - Done
  #if letter is a vowel, capitalize letter
  #combine array into string
  #"hEllO".upcase   #=> "HELLO"
 
 def NextLetter(str)
  
  #to print a new string containing the following letter in alphabet:
  arr1 = str.split('').map { |letter| letter.next }
 
  #to capitalize a vowel in a string:
  arr1.map! {|letter|

  case letter
  when /[aeiou]/i 
  letter.capitalize
  else letter
  end

  } 

  str = arr1.join('')
 return str
 end

puts NextLetter("abcdn")


#D: but you can do
#case letter
#when /[aeiou]/i <capitalize>
#else <dont>
#or something like that
#the leaning brackets denote the start and end of a regexp just like quotes for a string
#the square brackets, in a regexp, mean any one of the letters contained
#/pat/i - Ignore case
# /pat/ is an instance of a regexp, created by a regexp literal
# a literal lets you create something without calling the constructor
# like a string is created with ""

#D: Split turns a string into an array. Map turns the array into another array. Join turns the array into string.