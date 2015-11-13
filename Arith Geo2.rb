# Have the function ArithGeo(arr) take the array of numbers stored in arr and 
# return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. 
# If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, 
# where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. 
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. 
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

def Arith(arr)
    ari_incr = arr[1]-arr[0]
    arithmetic = true
    count = arr.length
    arr[0..count-2].each_index do |index| 
        if arr[index] + ari_incr != arr[index+1]
            arithmetic = false
        end
    end
    #return 'arithmetic' if arithmetic == true
    return arithmetic
end


def Geo(arr)
    geo_incr = arr[1]/arr[0]
    geometric = true
    count = arr.length
    arr[0..count-2].each_index do |index| 
        if arr[index] * geo_incr != arr[index+1]
            geometric = false
        end
    end
    #return 'geometric' if geometric == true
    return geometric
    
end


def ArithGeo(arr)
    #return Arith(arr) || Geo(arr)
    if Arith(arr) == true && Geo(arr) == true
        return 'arithmetic and geometric'
    elsif Geo(arr) == true
        return 'geometric'
    elsif Arith(arr) == true
        return 'arithmetic'
    else
        'no go'
    end
    
end




#puts Arith([2, 4, 6 ,8])
#puts Geo([2, 4, 8])
puts ArithGeo([2, 4, 8])
puts ArithGeo([2, 5, 8])
puts ArithGeo([1, 2])
puts ArithGeo([1, 2, 7])