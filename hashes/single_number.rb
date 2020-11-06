require 'pry'
# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
# Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?

# Example 1:

# Input: nums = [2,2,1]
# Output: 1

# Example 2:
# Input: nums = [4,1,2,1,2]
# Output: 4

# Example 3:
# Input: nums = [1]
# Output: 1

# @param {Integer[]} nums
# @return {Integer}

nums = [2, 2, 3, 4, 4]

def single_number(nums)
    hsh = {}
    nums.each { |n| hsh[n] ? hsh.delete(n) : hsh[n] = n }
    hsh.keys.first
end

single_number(nums)


# another solution:

# def single_number(nums)
#     hash = {}
#     nums.each do |n|
#       hash[n] = hash.fetch(n, 0) + 1
#     end
#     hash.key 1
#   end

# third solution:
# def single_number(nums)
#     return nums[0] if nums.size == 1
#     return 0 if nums.size == 0
#     nums = nums.sort
#     find(nums)
# end

# def find(nums)
#     res=0
#     i=0
#     found=false
#     while i < nums.size && !found
#         if(nums[i]!=nums[i+1] && nums[i] != nums[i-1])
#             found=true
#             res=nums[i]
#         else
#             i+=1
#         end
#     end
#     res
# end
