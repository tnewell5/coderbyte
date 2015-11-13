# Have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. 
# For example: if num is 123 return 132, if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 

# create a new array of sets of nums using permutation, then sort it to return the 

def PermutationStep(num)
    # creates an array arr that contains each digit of num conversted to string:
    arr = num.to_s.chars
    #creates new array arr1 that contains sets of 3 in each array address:
    arr1 = arr.permutation(arr.length).to_a
    # joins each set of 3 into a string:
    arr1.map! { |value| value.join}
    arr1 = arr1.sort
    arr1.each_index do |index|
        if arr1[index] == num.to_s
            return arr1[index+1]
        # if you don't find a match by the time you  reach address of arr1 minus 2, return '-1' (if the num is located second to last in arr1)
        elsif index == arr1.length - 2
            return '-1'
            
        end
    end
end

puts PermutationStep(123)
puts PermutationStep(12453)
puts PermutationStep(321)



