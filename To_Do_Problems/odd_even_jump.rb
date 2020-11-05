# You are given an integer array A. From some starting index, you can make a series of jumps. The (1st, 3rd, 5th, ...) jumps in the series are called odd-numbered jumps, and the (2nd, 4th, 6th, ...) jumps in the series are called even-numbered jumps. Note that the jumps are numbered, not the indices.

# You may jump forward from index i to index j (with i < j) in the following way:

# During odd-numbered jumps (i.e., jumps 1, 3, 5, ...), you jump to the index j such that A[i] <= A[j] and A[j] is the smallest possible value. If there are multiple such indices j, you can only jump to the smallest such index j.
# During even-numbered jumps (i.e., jumps 2, 4, 6, ...), you jump to the index j such that A[i] >= A[j] and A[j] is the largest possible value. If there are multiple such indices j, you can only jump to the smallest such index j.
# It may be the case that for some index i, there are no legal jumps.
# A starting index is good if, starting from that index, you can reach the end of the array (index A.length - 1) by jumping some number of times (possibly 0 or more than once).

# Return the number of good starting indices.



# Example 1:

# Input: A = [10,13,12,14,15]
# Output: 2
# Explanation:
# From starting index i = 0, we can make our 1st jump to i = 2 (since A[2] is the smallest among A[1], A[2], A[3],
# A[4] that is greater or equal to A[0]), then we cannot jump any more.
# From starting index i = 1 and i = 2, we can make our 1st jump to i = 3, then we cannot jump any more.
# From starting index i = 3, we can make our 1st jump to i = 4, so we have reached the end.
# From starting index i = 4, we have reached the end already.
# In total, there are 2 different starting indices i = 3 and i = 4, where we can reach the end with some number of
# jumps.

# @param {Integer[]} a
# @return {Integer}

def odd_even_jumps(a)

end
