# Have the function PrimeChecker(num) take num and return 1 if any arrangement of num comes out to be a prime number, otherwise return 0. 
# For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019, both of which are primes. 

#first create the Is_prime_num function, then do the main function that uses permutation to create sets of num iterations and calls the first function.

# a prime number is only divisible by 1 and itself. So 2, 3, 5, 7.  The function returns 'true' if num is a prime number (false otherwise):
def Is_prime_num(num)
    #do a loop from 2 to num-1 incremented by 1 that checks if num is divisible by any w/out remainder, which means it's not a prime number:
    result = 0
    count = 2
    result = true
    until count == num do
        if num % count == 0
            result = false
        end
        count += 1
    end
    return result
end

def PrimeChecker(num)
    arr = num.to_s.chars
    arr1 = arr.permutation(arr.length).to_a
    arr1.map! { |value| value.join }
    result = 0
    arr1.each do |string|
        if Is_prime_num(string.to_i) == true
            result = 1
        end
    end
    return result
end

puts PrimeChecker(910)
