# have the function CountingMinutesI(str) take the str parameter being passed 
# which will be two times (each properly formatted with a colon and am or pm) 
# separated by a hyphen and return the total number of minutes between the two times. 
# The time will be in a 12 hour clock format. 
# For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

def CountingMinutesI(str)
    require 'time'
    arr = str.split('-')
    time_one = Time.parse(arr[0])
    time_two = Time.parse(arr[1])
    difference = (time_two - time_one) / 60
    
    #for my reference only:
    #puts time_two - time_one
    #puts difference
    
    if difference < 0
      (24 * 60) + difference
    else
      difference
    end
   
end

puts CountingMinutesI('9:00am-11:00am').to_i
puts CountingMinutesI('1:00pm-11:00am').to_i
puts CountingMinutesI('9:30am-11:01am').to_i