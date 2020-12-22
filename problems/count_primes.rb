# Count the number of prime numbers less than a non-negative number, n.

# Example 1:
n = 1279
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

# def count_primes(n)

# end

# n = 10
#input  = integer
#output = boolean

def is_prime (n)
  sqrt = Math.sqrt(n)
  nums_below_sqrt = [*1..sqrt].each { |i| p i }
  nums_below_sqrt.each do |n|
    if (sqrt % n) == 0
      return false
    else
      return true
    end
  end
end

puts is_prime(n)
