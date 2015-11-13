#arr = str.split('') 
#arr.map! {|letter| letter.next } 
#str = arr.join

#simply to capitalize each letter in a string:
arr = "abc".split('') 
arr.map! {|letter| letter.capitalize } 
str = arr.join
puts str

#to capitalize a vowel in a string:
arr = "bcikoed".split('') 
arr.map! {|letter|

case letter
when /[aeiou]/i 
letter.capitalize
else letter
end

} 

str = arr.join
puts str

#D: but you can do
#case letter
#when /[aeiou]/i <capitalize>
#else <dont>
#or something like that
#the leaning brackets denote the start and end of a regexp just like quotes for a string
#the square brackets, in a regexp, mean any one of the letters contained