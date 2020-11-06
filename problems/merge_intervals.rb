#Given a collection of intervals, merge all overlapping intervals.

# Example 1:
# Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].

# @param {Integer[][]} intervals
# @return {Integer[][]}

intervals = [[1,3],[2,6],[8,10],[15,18]]

def merge(intervals)
    return intervals if interval.size == 0
    intervals = intervals.sort_by { |arr| arr[0]}
    ans = []

    ans = [intervals[0]]
        for i in 1..intervals.size - 1
            if intervals[i][0] <= ans[-1][1]
                ans[-1][1] = [ans[-1][1], intervals[i][1]].max
            else
                ans << intervals[i]
            end
        end
    ans
end

puts merge(intervals).inspect

#sort intervals array
# make an array or linked list to add the new sub_arrays to
# remember to return the array or linked list above
#iterate through each sub_array
