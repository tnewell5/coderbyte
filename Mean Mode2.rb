# Have the function MeanMode(arr) take the array of numbers stored in arr and 
# return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)). 
# The array will not be empty, will only contain positive integers, and will not contain more than one mode. 

def mean(arr)
    mean = (arr.reduce :+) / arr.length
end

def mode(arr)
    num_hash = Hash.new(0)
    arr.each do |num|
        num_hash[num] += 1
    end
    # do a hash loop to find and store the max value, then return the corresponding key:
    max_value = 0
    max_key = 0
    num_hash.each_pair do |key,value|
        if value > max_value
            max_value = value
            max_key = key
        end
    end
    return max_key    
    
end

def MeanMode(arr)
    if mode(arr) == mean(arr)
        return 1
    else
        return 0
    end
end


puts MeanMode([5,3,3,3,1])
puts MeanMode([5,8,3,3,1])
#puts mode([5,8,3,3,1])
#puts mean([5,8,3,3,1])
    
    
# Hash syntax:
    #arr1 = num_hash.keys
    #arr1 = num_hash.values
    #arr1 = num_hash


