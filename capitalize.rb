# Using the Ruby language, have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. 
# Words will be separated by only one space. 

def LetterCapitalize(str)
 arr1 = str.split(' ').map { |word| word.capitalize }
 return arr1.join(' ')
end

puts LetterCapitalize("how are you?")