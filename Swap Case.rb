# Have the function SwapCase(str) take the str parameter and swap the case of each character. 
# For example: if str is "Hello World" the output should be hELLO wORLD. Let numbers and symbols stay the way they are. 

def SwapCase(str)
    arr = str.chars
    arr.map! do |char|
        #if char =~ /[a-z]/i
            char.swapcase
        #else
        #    char
        #end
    end
    return arr.join
end

puts SwapCase('Hello World 56!')
