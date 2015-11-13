# Have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') between each two even numbers in str. 
# For example: if str is 4546793 the output should be 454*67-9-3. Don't count zero as an odd or even number. 

# create array of characters, do a loop with indexes.  Test char and next char converted to integer to see if odd or even, increment new array.

def DashInsertII(str)
    arr = str.chars
    result_str = ''
    arr.each_index do |index|
    result_str += arr[index]
        if arr[index] != '0' && arr[index+1] != '0'
            # test if odd pair:
            if arr[index].to_i % 2 == 1 && arr[index+1].to_i % 2 == 1 
                result_str += '-'
            # test if even pair:    
            elsif arr[index].to_i % 2 == 0 && arr[index+1].to_i % 2 == 0
                result_str += '*'
            end
        end
    end
    return result_str
end

puts DashInsertII('2435')
puts DashInsertII('024035')
    