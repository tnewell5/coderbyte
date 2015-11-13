# Have the function Consecutive(arr) take the array of integers stored in arr and return the minimum number of integers needed to make the contents of arr consecutive 
# from the lowest number to the highest number. For example: If arr contains [4, 8, 6] then the output should be 2 
# because two numbers need to be added to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8. 
# Negative numbers may be entered as parameters and no array will have less than 2 elements. 

# subtract the min from the max minus 1 to get the count of numbers that should be in between. 
# Then subtract the array length minus 2 for max and min to see how many numbers are already present.
def Consecutive(arr)
    arr = arr.sort.uniq
    
    arr_max = arr[-1]
    arr_min = arr[0]
    #find how many numbers should be between the min and max:
    result1 = arr_max - arr_min - 1
    #how many numbers are alerady present in between:
    result2 = arr.length - 2
    result3 = result1 - result2
    return result3
end

puts Consecutive([4,8,6])
puts Consecutive([3,4,5,1,10])
puts Consecutive([3,4,5,1,1,10])