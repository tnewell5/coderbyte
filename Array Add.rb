# have the function ArrayAdditionI(arr) take the array of numbers stored in arr and 
# return the string true if any combination of numbers in the array can be added up 
# to equal the largest number in the array, otherwise return the string false. 
# For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. 
# The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

#def ArrayAdditionI(result)

#arr.delete(2)

def ArrayAddition(arr)
    largest_value = arr[0]
    arr.each do |value|
        if value > largest_value
            largest_value = value
        end
    end 
    
arr.delete(largest_value)
# so now array no longer contains the largest value

arr_count = arr.count
# to find out the number of elements in new array
# return arr.permutation.to_a

# split array into new arrays with pairs of elements from pair of all elements equal to arr_count and down to pairs of 2
# add each pair and test if the sum equals to the largest value
# arr1 = arr.permutation(3).to_a.reduce(:+)

# [[1,2],[2,1],[3,2],[3,1],[2,3],[1,3]]
result = false
(2..arr_count).each do |num_elements_in_arr|
    arr.permutation(num_elements_in_arr).each do |value|
        if value.reduce(:+) == largest_value
            result = true
        end
    end
end

#arr1 = arr.permutation(2).reduce(:+)
return result

end

# D: arr.each { |val| sum += val }

puts ArrayAddition([2,6,12,3,4,0])
#puts ArrayAdditionI([1,3,2])