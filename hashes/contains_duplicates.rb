# Given an array of integers, find if the array contains any duplicates.

# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# Example 1:
# Input: [1,2,3,1]
# Output: true
# Example 2:

# Input: [1,2,3,4]
# Output: false
# Example 3:

# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true

# @param {Integer[]} nums
# @return {Boolean}

nums = [1,2,3,1]

def contains_duplicate(nums)
    return nums == nums.uniq ? false : true
end

puts contains_duplicate(nums)
# if nums == nums.uniq is true (it means there were no duplicates) so return false, otherwise return true
