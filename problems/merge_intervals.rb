#Given a collection of intervals, merge all overlapping intervals.

# Example 1:
# Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].

# @param {Integer[][]} intervals
# @return {Integer[][]}

intervals = [[1,3],[2,6],[8,10],[15,18]]

def merge(intervals)
    index = 0
    if intervals[index][-1] > intervals[index + 1][0]

    else
        false
    end
end


puts merge(intervals)

# if the last element in the array is greater than the first element in the next array,
#merge the arrays and sort them
