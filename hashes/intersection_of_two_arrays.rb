require 'set'
# Given two arrays, write a function to compute their intersection.

# Example 1:

# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2]

# Each element in the result must be unique.
# The result can be in any order.

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}

# Intersection means common elements in the given two arrays. ... For example, A = [1,4,3,2,5,6] B = [3,2,1,5,6,7,8,10] intersection of A and B is [ 1,3,2,5,6 ].
# Sort array and then use binary search. As given arrays are unsorted, sort one of the arrays, preferably the larger one.

# Input:
nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
# Output: [9,4]

# Solution 1:

# def intersection(nums1, nums2)
#     nums1 & nums2
# end

#
def intersection(nums1, nums2)
    nums1, nums2 = nums2, nums1 if nums1.size > nums2.size
    short_set = Set.new(nums1)
    nums2.each_with_object(Set.new) {|num, result| result << num if short_set.include?(num)}.to_a
end


#gets error: uninitialize constant Set ??? (need to make a Set class??) how to make this work?

# Notes:
# each_with_object(memo) public
# Iterates over a collection, passing the current element and the memo to the block. Handy for building up hashes or reducing collections down to one object. Examples:

# %w(foo bar).each_with_object({}) { |str, hsh| hsh[str] = str.upcase }
# => {'foo' => 'FOO', 'bar' => 'BAR'}



puts intersection(nums1, nums2)



# Time complexity of this approach is O(n+m) in the average case.

# Solution Logic:

# Approach 1: Two Sets
# Intuition

# The naive approach would be to iterate along the first array nums1 and to check for each value if this value in nums2 or not. If yes - add the value to output. Such an approach would result in a pretty bad \mathcal{O}(n \times m)O(n×m) time complexity, where n and m are arrays' lengths.

# To solve the problem in linear time, let's use the structure set, which provides in/contains operation in \mathcal{O}(1)O(1) time in average case.

# The idea is to convert both arrays into sets, and then iterate over the smallest set checking the presence of each element in the larger set. Time complexity of this approach is \mathcal{O}(n + m)O(n+m) in the average case.
