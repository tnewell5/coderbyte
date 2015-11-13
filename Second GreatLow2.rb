# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and 
# return the second lowest and second greatest numbers, respectively, separated by a space. 
# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. 
# The array will not be empty and will contain at least 2 numbers. It can get tricky if there's just two numbers! 

def SecondGreatLow(arr)
    #to return the last element in an array:
    #return arr[-1]
    arr1 = arr.sort.uniq
    if arr1.length == 2
        return arr1[0].to_s+' '+arr1[1].to_s
    else
        return arr1[1].to_s+' '+arr1[-2].to_s
    end
end

puts SecondGreatLow([7,4,12,98,106])
puts SecondGreatLow([98,12])
puts SecondGreatLow([7,4,12,98,12,106])