# Writing Items into an Array with a Loop
require 'pry'

# Method: print nums 1-10
# def print_nums

# end
# return write_array

# Method: Sum the numbers of an array
a = [3,23,4,3,12,54,65,23,23,45,32,54,23]

def sum_nums(a)
    sum = 0
    i = 0
    while i < a.size
        sum = sum + a[i]
        i += 1
    end
    sum
end

sum_nums(a)
