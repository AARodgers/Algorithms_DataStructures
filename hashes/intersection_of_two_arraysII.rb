
require 'pry'
# Given two arrays, write a function to compute their intersection.



# Example 2:
# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [4,9]

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}

# Example 1:
# Input:
nums1 = [1,2,2,1]
nums2 = [2,2]
# Output: [2,2]

#Solution 1:
# def intersect(nums1, nums2)
#     result = []
#     return result if nums1 == nil || nums2 == nil

#     if nums2.length < nums1.length
#         nums2 = nums1
#     end

#     hash1 = {}
#     nums1.each do |num|
#         if hash1.has_key?(num)
#             hash1[num] += 1
#         else
#             hash1[num] = 1
#         end
#     end

#     nums2.each do |num2|
#         if hash1.has_key? num2
#             result << num2
#             # if hash1[num2] >= 1
#             # hash1[num2] -= 1
#             binding.pry
#         end
#     end
#     return result
# end

#Solution 2 ( with pointers and sorting)
#Wrong answer:
#input:
# nums1 = [4, 9, 5]
# nums2 = [9, 4, 9, 8, 4]
# expected: [4, 9]
# output: [9]

def intersection(nums1, nums2)
    ans = []
    i = 0
    j = 0

    nums1 = nums1.sort
    num2 = nums2.sort


    while (i < nums1.length && j < nums2.length)
        if nums1[i] < nums2[j]
            i += 1
        elsif nums1[i] > nums2[j]
            j += 1
        elsif nums1[i] == nums2[j]
            ans << nums1[i]
            i += 1
            j +=1
        end
    end
    ans
end


puts intersection(nums1, nums2)

# why doesn't this return an array in terminal but does when you inspect?

#what is the difference between just putting result and return result?

# Solution
# If an interviewer gives you this problem, your first question should be -
#how should I handle duplicates? Your second question, perhaps, can be about the order of inputs and outputs.

# It's a good idea to check array sizes and use a hash map for the smaller array. It will reduce memory usage when one of the arrays is very large.
