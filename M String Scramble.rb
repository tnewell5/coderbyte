# Have the function StringScramble(str1,str2) take both parameters being passed and 
# return the string true if a portion of str1 characters can be rearranged to match str2, 
# otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. 
# Punctuation and symbols will not be entered with the parameters. 

# so if str1 contains all letters of str2, return 'true'
# split both strings into arrays, then derive a new array of common elements, sort, compare to str2

def StringScramble(str1, str2)
    arr_str1 = str1.chars
    arr_str2 = str2.chars
    arr_common = arr_str1 & arr_str2
    return arr_common.sort == arr_str2.sort
        
end

# should return 'true':
puts StringScramble('rkqodlw', 'world')

# should return 'false':
puts StringScramble('rkqodl', 'world')