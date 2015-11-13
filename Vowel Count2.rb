# Have the function VowelCount(str) take the str string parameter being passed and return the number of vowels the string contains 
# (ie. "All cows eat grass" would return 5). Do not count y as a vowel for this challenge. 

def VowelCount(str)
    arr = str.chars
    # or another way:
    #arr = str.split('')
    count = 0
    arr.each do |value|
        if value =~ /[aioue]/i
            count +=1
        end
    end
    return count
end

puts VowelCount('all cows eat grass')
puts VowelCount('all cows eat')
puts VowelCount('all')