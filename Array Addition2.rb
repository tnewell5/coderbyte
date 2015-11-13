# Have the function ArrayAdditionI(arr) take the array of numbers stored in arr and 
# return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, 
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. 
# The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

def ArrayAdditionI(arr)
    max = arr.sort.pop
    #return max
    result = false
    arr2 = arr.sort[0..arr.count-2]
    #return arr2
    
    #if sum of any permutation of arr2 elements equals the max, return 'true'; otherwise return 'false'
    #if (arr2.reduce :+) == max
    #    result = true
    count = 1
    until count == arr2.count+1 
        arr3 = arr2.permutation(count).to_a
        arr3.each do |set|
            if (set.reduce :+) == max
                result = true
            end
        end
    count +=1
    end
    
    
    return result
    
end

puts ArrayAdditionI([4,5,23,10,1,3])
puts ArrayAdditionI([23,10,11,2])
#puts ArrayAdditionI([23,10,11,3])
puts ArrayAdditionI([23,10,13])
puts ArrayAdditionI([23,10,12,1,2])