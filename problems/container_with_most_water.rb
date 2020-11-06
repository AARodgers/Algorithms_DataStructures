require 'pry'
# 11. Container With Most Water
# Medium
# Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.

# Notice that you may not slant the container.

# Input: [1,8,6,2,5,4,8,3,7]
# Output: 49
# Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
# Example 2:

# Input: height = [1,1]
# Output: 1
# Example 3:

# Input: height = [4,3,2,1,4]
# Output: 16
# Example 4:

# Input: height = [1,2,1]
# Output: 2

# @param {Integer[]} height
# @return {Integer}

# def max_area(height)
#     value_index_hash = {}

#     height.each_with_index do |val, index|
#         value_index_hash[val] = index
#     end
#     # value_index_hash = {1=>0, 8=>6, 6=>2, 2=>3, 5=>4, 4=>5, 3=>7, 7=>8}
# end
height = [1,8,6,2,5,4,8,3,7]
#Sol1 brute force: consider area for every possible pair of the lines and find max. Time: O(N^2), space: O(N)
def max_area(height)
    i = 0
    j = height.length - 1
    max_area = 0

    while  i < j
        area = (j-i) * [height[i], height[j]].min
        max_area = [max_area, area].max

        if height[i] > height[j]
            j -= 1
        else
            i += 1
        end
    end
    max_area
end

puts max_area(height)


# def highest_two_values(height)
#     max = height.sort[-1]
#     min = height.sort[-2]
#     puts max, min
# end

# puts highest_two_values(height)

#look for highest value and largest index distance at same time?

#need two highest equal numbers in array or highest and second highest ( if there are not any equal )
#need largest length between numbers in array ()
