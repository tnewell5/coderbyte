# Have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. 
# Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 
# because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1. 

def BracketMatcher(str)
    #function will count the left and the right brackets in the string, then compare the numbers
    arr_chars = str.chars
    left_br_count = 0
    right_br_count = 0
    
    arr_chars.each do |char|
        if char == '('
            left_br_count += 1
            
        elsif char == ')'
            right_br_count += 1
            if left_br_count == 0
                return 0
            end
        end
    end
    
    if left_br_count == 0 && right_br_count == 0
        return 0
    elsif left_br_count == right_br_count
        return 1
    else
        return 0
    end
            
end

puts BracketMatcher("(hello (word))")
puts BracketMatcher("(hello (wo(rd))")
puts BracketMatcher("hello word")
puts BracketMatcher(")hello word(")
puts BracketMatcher("(h(el)lo word(")
puts BracketMatcher("h)ello word(")
