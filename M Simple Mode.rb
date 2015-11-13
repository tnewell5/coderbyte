# Have the function SimpleMode(arr) take the array of numbers stored in arr and return the number that appears most frequently (the mode). 
# For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. If there is more than one mode return the one that appeared in the array first 
# (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). 
# If there is no mode return -1. The array will not be empty. 

# function will take in a number and an array, then return a count of times a number has appeared in an array:
#def Num_count(num, arr)
#    num_count = 0
#    arr.each do |value|
#        if value == num
#            num_count += 1
#        end
#    end
#    return num_count
#end
#puts Num_count(3,[2,5,3,4,3])



# function will compare the count for each number and return the number with the highest count.  May need to modify later to check which to return if the count is the same:
def SimpleMode(arr)
    #create new hash:
    num_hash = Hash.new(0)
    #build the hash with each number as the key and each number count as the value:
    arr.each do |num|
        num_hash[num] += 1
    end
    # to see what the hash looks like:
    puts num_hash
    #return the key of the max value:
    max_key = 0
    max_value = 0
    num_hash.each_pair do |key, value|
        if value > max_value
            max_value = value
            max_key = key
        end
    end
    return max_key
end

puts SimpleMode([2,5,3,4,3])
puts SimpleMode([2,5,3,4,3,4])
puts SimpleMode([2,5,3,4,3,4,4])
