# have the function MeanMode(arr) take the array of numbers stored in arr and 
# return 1 if the mode equals the mean, 0 if they don't equal each other (ie. [5, 3, 3, 3, 1] 
# should return 1 because the mode (3) equals the mean (3)). 
# The array will not be empty, will only contain positive integers, and will not contain more than one mode.

def MeanMode(arr)
  
  sum = 0
  arr_length = arr.length
  arr.each do |value|
      arr[0..arr_length-1]
      sum = sum + value
  end
  mean = sum / arr_length
  
    mode = 0
    max_count = 0
    num_hash = Hash.new(0)
    
    arr.each do |value|
      num_hash[value] += 1
    end
     
    num_hash.each_pair do |key, value| 
        if value > max_count
            max_count = value 
            mode = key
        end
    end
    
  
  return mode == mean 
         
end

puts MeanMode([5,3,3,3,1])
puts MeanMode([5,3,8,3,1])