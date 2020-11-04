require 'pry'
# Given an array of strings strs, group the anagrams together. You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

# Example 1:

# Input:
strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
# Example 2:

# Input: strs = [""]
# Output: [[""]]
# Example 3:

# Input: strs = ["a"]
# Output: [["a"]]

# @param {String[]} strs
# @return {String[][]}

def group_anagrams(strs)
  # sort each string in array of strings
  grouped_anagrams = {}

  strs.each do |string|
    key = string.chars.sort.join
    if grouped_anagrams[key]
        # we saw an anagram of this word already
        # so, we append the string to the array
        grouped_anagrams[key].push(string)
    else
        # we didn't see an anagram of this word
        # so, we need to create a new key and a new array with the string
        grouped_anagrams[key] = [string]
    end
  end

  grouped_anagrams.values
end

group_anagrams(strs)

# def process_one(string)
#     key = string.chars.sort.join
#     if grouped_anagrams[key]
#         # we saw an anagram of this word already
#         # so, we append the string to the array
#         grouped_anagrams[key].push(string)
#     else
#         # we didn't see an anagram of this word
#         # so, we need to create a new key and a new array with the string
#         grouped_anagrams[key] = [string]
#     end
# end

# process_one('eat')
# process_one('tea')
# process_one('cat')
# process_one('ate')
# process_one('def')
# process_one('act')
