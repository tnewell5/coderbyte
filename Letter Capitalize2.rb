# Have the function LetterCapitalize(str) take the str parameter being passed and capitalize the first letter of each word. 
# Words will be separated by only one space.

def LetterCapitalize(str)
    arr = str.split' '
    arr.map! do |word|
        word.capitalize
    end
    return arr.join' '
end

puts LetterCapitalize('how are you?')