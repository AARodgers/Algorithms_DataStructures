require 'pry'
#printed
# Given a string s, find the length of the longest substring without repeating characters.

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
# Example 4:

# Input: s = ""
# Output: 0

# @param {String} s
# @return {Integer}

s = "abcabcbb"

def length_of_longest_substring(s)
  size = s.length
  return size if size == 1

left_pointer = 0
right_pointer = 0
max_length = 0

letters = []
while right_pointer < size do
  if !letters.include? s[right_pointer]
    letters.push(s[right_pointer])
    right_pointer += 1
    max_length = [max_length, right_pointer - left_pointer].max
  else
    letters = letters - [s[left_pointer]]
    left_pointer += 1
  end
  puts letters.inspect
end
max_length
end

puts length_of_longest_substring(s)

#why does binding pry return double characters, ex. [a, a] when put it below chars.push(s[right_point])
#why don't have to turn s a string into an array, why is it treated like an array, if it is a string?


#Hash solution below:

# def length_of_longest_substring(s)

#     max, set, i = 0, {}, 0

#     while i < s.length
#      current = s[i]
#      if !set.has_key?(current)  # 'if set does not have current add it to our hash'
#          set[current] = i              # 'our hash has the string element as a key and the index as our value'
#          max = [max, set.keys.length].max      # 'keys.length is unique so we compare it to the previous max'
#      else
#          i = set[current]       # 'once we hit a duplicate we set i equivalent to the index stored in our hash'
#          set = {}      # 'reset the hash'
#      end
#       i += 1
#     end
#      max
#  end
