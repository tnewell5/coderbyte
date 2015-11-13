# Have the function ArithGeo(arr) take the array of numbers stored in arr and 
# return the string "Arithmetic" if the sequence follows an arithmetic pattern 
# or return "Geometric" if it follows a geometric pattern. 
# If the sequence doesn't follow either pattern return -1. 
# An arithmetic sequence is one where the difference between each of the numbers is consistent, 
# where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. 
# Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. 
# Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

def ArithGeo(arr)
    is_arith = true
    is_geo = true
    #num_elements = arr.count
    ari_change = arr[1] - arr[0]
    geo_change = arr[1] / arr[0]
    (arr.count-1).times do |index|
        if arr[index + 1] != arr[index] + ari_change
            is_arith = false
        end
        
        if arr[index + 1] != arr[index] * geo_change
            is_geo = false
        end
    end
    
    if is_arith
        return "Arithmetic"
    elsif is_geo
        return "Geometric"
    else
        return false
    end
            
end

puts ArithGeo([2, 4, 8, 10])
puts ArithGeo([1, 3, 20])

# a.take_while { |i| i < 3 }
