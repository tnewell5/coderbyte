# Have the function DashInsert(str) insert dashes ('-') between each two odd numbers in str. 
# For example: if str is 454793 the output should be 4547-9-3. Don't count zero as an odd number. 

def DashInsert(str)
    arr = str.chars
    arr1 = ''
    arr.each_index do |index|
        if arr[index].to_i % 2 == 1 && arr[index+1].to_i % 2 == 1
            arr1 += arr[index]+'-'
        else
            arr1 += arr[index]
        end
    end
    return arr1
end

puts DashInsert('454793')
puts DashInsert('13454793')