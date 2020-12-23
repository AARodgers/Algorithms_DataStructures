# Count the number of prime numbers less than a non-negative number, n.

# Example 1:
# n = 10
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



  n = 1

  def count_primes(n)
    numbers = []
    nums_less =  [*0..(n - 1)].each { |i| numbers << i }
    #nums_less = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    prime_nums = []
    not_prime = []

    if n == 0 || 1
     prime_nums == []
    end

    nums_less.map do |n|
      if n == 2
        prime_nums << 2
      elsif n <= 1
        not_prime << n
      elsif (n % 2) == 0
        not_prime << n
      elsif n == 3
        prime_nums << 3
      elsif n.odd? && (n % 3) == 0
        not_prime << n
      else
        prime_nums << n
      end
    end
    prime_nums.count
  end

  puts count_primes(n)

  #Wrong:
  #input: 10,000
  #output: 3334
  #expected:1229

  # def is_prime?(n)
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





  # 2.6.1 :004 > arr = [[3, 6], [6, 12]]
  #  => [[3, 6], [6, 12]]
  # 2.6.1 :005 > arr.to_h
  #  => {3=>6, 6=>12}
