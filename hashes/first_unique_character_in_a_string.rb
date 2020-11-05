require 'pry'
# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# Examples:

#Input:
s = "leetcode"
# return 0.

# s = "loveleetcode"
# return 2
# Note: You may assume the string contains only lowercase English letters.

# @param {String} s
# @return {Integer}

s = "leetcode"
# return 0
# where are you inserting values in into the hash?
def first_uniq_char(s)
    hash = Hash.new

    s.each_char do |i|
        if hash.has_key?(i)
            hash[i] += 1
        else
            hash[i] = 1
        end
    end

    hash.each do |k,v|
        return s.index(k) if v == 1
    end
    return -1
end

first_uniq_char(s)
