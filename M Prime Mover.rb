# Have the function PrimeMover(num) return the numth prime number. 
# The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

def PrimeMover(num)
    #returns the num's prime number.  does the loop num times.
    test_num = 2
    prime_num_count = 0
    result = 0
    
    until prime_num_count == num do
        # if the number tested is a prime number, increment prime_num_count by 1.
        if Prime_num_test(test_num) == true
            prime_num_count += 1
            result = test_num
        end
        test_num += 1
    end
    return result
end

def Prime_num_test(num)
    #returns true if num is a prime number (it it's only divisible by 1 and itself):
    count = 2
    result = true
    until count == num
        if num % count == 0
            result = false
        end
        count += 1
    end   
    #returns value 'true' if prime or 'false' if not prime number
    return result
    
end


#puts Prime_num_test(8)
puts PrimeMover(16)

# supposed to go through a range of numbers between 1 and 10^4 and test each number to see if it's a prime number.  Do this test num times.