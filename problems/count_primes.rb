# Count the number of prime numbers less than a non-negative number, n.

# Example 1:
n = 10
# Output: 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
# Example 2:

# Input: n = 0
# Output: 0
# Example 3:

# Input: n = 1
# Output: 0

# @param {Integer} n
# @return {Integer}

# def is_prime(n)
#   sqrt = Math.sqrt(n)
#   nums = []
#   nums_below_sqrt = [*1..sqrt].each { |i| nums << i }
#   nums_below_sqrt.each do |n|
#     if (sqrt % n) == 0
#       return false
#     else
#       return true
#     end
#   end
# end

def count_primes(n)
  numbers = []
  nums_less =  [*0..(n - 1)].each { |i| numbers << i }
  nums_hash = nums_less.to_h
  puts nums_hash
end

# 2.6.1 :004 > arr = [[3, 6], [6, 12]]
#  => [[3, 6], [6, 12]]
# 2.6.1 :005 > arr.to_h
#  => {3=>6, 6=>12}

count_primes(n)
