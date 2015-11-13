# Have the function SecondGreatLow(arr) take the array of numbers stored in arr and 
# return the second lowest and second greatest numbers, respectively, separated by a space. 
# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98. 
# The array will not be empty and will contain at least 2 numbers. It can get tricky if there's just two numbers! 

def Second_low(arr)
    arr.sort!.uniq!
    second_low = arr[1]
    return second_low 
end

def Second_high(arr)
    arr.sort!.uniq!
    second_high = arr[-2]
    return second_high 
end    

def Result(arr)
    return Second_low(arr).to_s + ' ' + Second_high(arr).to_s
end

#puts Second_low([2,2,3,5,8,6])
#puts Second_high([2,2,3,5,8,6])
puts Result([2,2,3,5,8,6])