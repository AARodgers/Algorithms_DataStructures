require 'pry'
# Contains Duplicate II

# Solution
# Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

# Example 1:

# Input:
nums = [1,2,3,1]
k = 3
# Output: true
# Example 2:

# Input: nums = [1,0,1,1], k = 1
# Output: true
# Example 3:

# Input: nums = [1,2,3,1,2,3], k = 2
# Output: false

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}

def contains_nearby_duplicate(nums, k)
    num_hash = Hash.new(0)
    left_p = 0

    nums.each do |num|
    return true if num_hash.has_key?(num)

    num_hash[num] = 0

    if num_hash.length > k
        num_hash.delete(nums[left_p])
        left_p += 1
    end
    end

    false
end

puts contains_nearby_duplicate(nums, k)

# where do you atually insert the numbers into the hash?
# note: it doesn't have to see if there are duplicates, only return true if hash has a key that matches nums in iteration

# Approach #3: Hash Table
# Intuition

# Keep a sliding window of kk elements using Hash Table.

# Algorithm

# From the previous approaches, we know that even logarithmic performance in search is not enough. In this case, we need a data structure supporting constant time search, delete and insert operations. Hash Table is the answer. The algorithm and implementation are almost identical to Approach #2.

# Loop through the array, for each element do
# Search current element in the HashTable, return true if found
# Put current element in the HashTable
# If the size of the HashTable is larger than kk, remove the oldest item.
# Return false

# Complexity Analysis

# Time complexity : O(n)O(n). We do nn operations of search, delete and insert, each with constant time complexity.

# Space complexity : O(\min(n,k))O(min(n,k)). The extra space required depends on the number of items stored in the hash table, which is the size of the sliding window, \min(n,k)min(n,k).
