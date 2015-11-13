# Have the function LetterCountI(str) take the str parameter being passed and 
# return the first word with the greatest number of repeated letters. 
# For example: "Today, is the greatest day ever!" should return 'greatest' because 
# it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. 
# If there are no words with repeating letters return -1. Words will be separated by spaces.
def Repeated_letter_count(word)
    #split string 'word' into array of letters:
    arr = word.chars
    #create new hash called 'letter_hash':
    letter_hash = Hash.new(0)
    #for each letter in array:
    arr.each do |letter|
      #increment each letter within the hash?  Somehow count the number of times each letter repeats..but how?
      letter_hash[letter] += 1
    end
    #create new array called 'arr1' and fill it with values (not keys) of hash 'letter_hash': 
    arr1 = letter_hash.values
    #create variable called 'max' and fill it with the max value of array 'arr1', which you get by sorting the array and removing the max value:
    max = arr1.sort.pop
    #function returns the max value stored in variable 'max':
    return max
end

def LetterCountI(sentence)
  #create a variable called 'result' and populate it with an empty string:
  result =''
  #create an array called 'arr_words' and populate it with sentence of type string, split into words:
  arr_words = sentence.split' '
  #create variable 'word_max' and fill it with zero:
  word_max = 0
  #for each word in array 'arr_words':
  arr_words.each do |word|
    #create variable 'max' and fill it with result of Repeated_Letter_count function for each word:
    max = Repeated_letter_count(word)
    #if the max of this word is larger than value stored in variable 'word_max', assign the value of 'max' to 'word_max' and assign the value of word to variable 'result':  
    if max > word_max
        word_max = max
        result = word
    end  
  end
  #return word value:
  return result
end

puts LetterCountI("you hello")


#a hash is a set of keys and values
#in this hash, the key is the letter and the value is the number of times it's been seen
#line 14 gets the value that corresponds to the current letter and increments that value by 1