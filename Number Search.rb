# Have the function NumberSearch(str) take the str parameter, search for all the numbers in the string, add them together, 
# then return that final number. For example: if str is "88Hello 3World!" the output should be 91. 
# You will have to differentiate between single digit numbers and multiple digit numbers like in the example above. 
# So "55Hello" and "5Hello 5" should return two different answers. Each string will contain at least one letter or symbol. 

def NumberSearch(str)
    arr = str.chars
    sum = 0
    arr1 = ''
    arr.each_index do |index|
        if arr[index] =~ /[0-9]/ && arr[index+1] =~ /[0-9]/
            arr1 += arr[index]
        else
            arr1 += arr[index]
            arr1 += '-'
        end
    end
    
    arr2 = arr1.split'-'
    arr2.each do |value|
        if value =~ /[0-9]/
            sum += value.to_i
        end
    end
    return sum
end

puts NumberSearch('do35k1')
puts NumberSearch('7do35k1!2')