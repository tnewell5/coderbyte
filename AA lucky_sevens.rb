# Write a function lucky_sevens? (numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.
# Examples:
#   lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
#   lucky_sevens?([3,4,3,4]) == false

def lucky_sevens(arr)
    result = false
    arr[0..-3].each_index do |index|
        if arr[index]+arr[index+1]+arr[index+2] == 7
            result = true
        end
    end
    return result     
        
end

#should be true:
puts lucky_sevens([1,5,1,2]) 
puts lucky_sevens([3,1,5,1,2])
puts lucky_sevens([1,5,1,2,4,8])

#should be false:
puts lucky_sevens([3,5,1,2]) 
puts lucky_sevens([3,5])
