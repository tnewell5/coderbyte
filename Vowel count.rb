# Have the function VowelCount(str) take the str string parameter being passed and 
# return the number of vowels the string contains 
# (ie. "All cows eat grass" would return 5). Do not count y as a vowel for this challenge. 

def VowelCount(str)
    count = 0 
    str.chars.each do |value|
        if /[aioeu]/.match value
            count += 1
        end
    end
    
    return count
end

puts 'FAILED 1' if VowelCount('') != 0
puts 'FAILED 2' if VowelCount('a') != 1
puts 'FAILED 3' if VowelCount('bc') != 0
puts VowelCount('oi ee e')