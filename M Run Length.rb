# Have the function RunLength(str) take the str parameter being passed and return a compressed version of the string using the Run-length encoding algorithm. 
# This algorithm works by taking the occurrence of each repeating character and outputting that number along with a single character of the repeating sequence. 
# For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols. 

# split string into array of letters, go over each letter and increment the count until reach the next letter. Once reach next letter, store the count and prior letter in new array:
def RunLength(str)
    count = 0
    arr = str.chars
    arr1 = ''
    prior_letter = arr[0]
    arr.each_index do |index|
        if arr[index] != prior_letter
            
            arr1 += count.to_s
            arr1 += prior_letter
            prior_letter = arr[index]
            count = 1
            
        else
            count += 1
            # if this is the last element of the array arr, increment arr1 with current count and current letter
            if  index == arr.length-1
                puts 'okay'
                arr1 += count.to_s
                arr1 += arr[index]
            end
            
        end
    end
    return arr1
end

puts RunLength('wwwggopp')
