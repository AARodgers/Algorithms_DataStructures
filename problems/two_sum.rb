
require 'pry'
# Solution 1:
# (brute force, is slow, O(n^2)

# def two_sum(nums, target)
#     nums.each.with_index do |x_val, x_index|
#         y_nums = nums.slice(x_index + 1, nums.count)
#         y_nums.each.with_index do |y_val, y_index|
#             if x_val + y_val == target
#                 return x_index, y_index + (x_index + 1)
#             end
#         end
#     end
# end

# Solution 2:
# (faster)

# Input:
nums = [2,7,11,15]
target = 9
# Output: [0,1]

def two_sum(nums,target)
    hash = {}
    nums.each_with_index do |n, i|
        if hash[target - n]
            return hash[target - n], i
        end
        hash[n] = i
    end
end


puts two_sum(nums,target)

#where are you putting the array into the hash??
# how can i get binding.pry to work to see the hash etc?
# why need this line? what does it do? hash[n] = i, why not just hash[n]
# why doesn't the function stop after the first correct value is found b. it says return?


# Solution 3 Approach (FASTEST): One-pass Hash Table (* AS YOU ITERATE TO PUT THE ELEMENTS IN A HASH MAP, AT THE SAME TIME, CHECK TO SEE IF VALUE = TARGET - X)
# It turns out we can do it in one-pass. While we iterate and inserting elements into the table, we also look back to check if current element's complement already exists in the table. If it exists, we have found a solution and return immediately.



# Solution 2 Approach: Two-pass Hash Table (* 2 ITERATIONS, PUT ELEMENTS INTO A HASH MAP AND THEN ITERATE AGAIN TO SEE IF VALUE= TARGET - X)
# To improve our run time complexity, we need a more efficient way to check if the complement exists in the array. If the complement exists, we need to look up its index. What is the best way to maintain a mapping of each element in the array to its index? A hash table.

# We reduce the look up time from O(n) to O(1) by trading space for speed. A hash table is built exactly for this purpose, it supports fast look up in near constant time. I say "near" because if a collision occurred, a look up could degenerate to O(n)O(n) time. But look up in hash table should be amortized O(1)O(1) time as long as the hash function was chosen carefully.

# A simple implementation uses two iterations. In the first iteration, we add each element's value and its index to the table. Then, in the second iteration we check if each element's complement (target - nums[i]target−nums[i]) exists in the table. Beware that the complement must not be nums[i]nums[i] itself!
