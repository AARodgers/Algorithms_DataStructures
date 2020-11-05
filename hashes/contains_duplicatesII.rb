require 'pry'
# Contains Duplicate II
# Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

# Example 1:
# Input:
# nums = [1,2,3,1]
# k = 3
# Output: true

# Example 2:
# Input:
# nums = [1,0,1,1]
# k = 1
# Output: true

# Example 3:
# Input:nums = [1,2,3,1,2,3]
#k = 2
# Output: false

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}

nums = [1,2,3,1,2,3]
k = 2

def contains_nearby_duplicate(nums, k)
    seen = {}
    nums.each_with_index do |n, i|
        return true if seen[n] && i - seen[n] <= k
        seen[n] = i
    end
    return false
end

puts contains_nearby_duplicate(nums, k)

# Time complexity : O(n)O(n). We do nn operations of search, delete and insert, each with constant time complexity.
# Space complexity : O(\min(n,k))O(min(n,k)). The extra space required depends on the number of items stored in the hash table, which is the size of the sliding window, \min(n,k)min(n,k).
