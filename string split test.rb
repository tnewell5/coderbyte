

#that will always store the last word
#can you change the assignment to instead store the longest word?
def LongestWord(sen)
    
longest_word = ''
sen.split(' ').each { |word| 
if word.length > longest_word.length
    longest_word = word
    
end
}
return longest_word

end

puts LongestWord("how is your day")