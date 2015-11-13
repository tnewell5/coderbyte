# Have the function BinaryConverter(str) return the decimal form of the binary value. 
# For example: if 101 is passed return 5, or if 1000 is passed return 8

# D: to translate between binary and decimal, you use exponents. The formula is num * base ^ power
# for binary, num is 0 or 1
# base is always 2
# and power, is the nth decimal
# so, the binary number 10 is
# (1 * 2^1) + (0 * 2^0) is equivalent to 3 in decimal


def BinaryConverter(str)
    val = 1
    arr = str.reverse.chars
    arr_val = []
    

    arr.each_index do |index| 
        if arr[index] == '1'
          val *= 2**index
          arr_val.push val
        end
        #puts val
    end
    return arr_val.reduce (:+)
    
end

puts BinaryConverter('10')
# expected result: (0 * 2^0) + (1 * 2^1) = 2

puts BinaryConverter('101')
# expected result: (1 * 2^0) + (0 * 2^1) + (1 * 2^2) = 1 + 0 + 4 = 5 

puts BinaryConverter('1000')