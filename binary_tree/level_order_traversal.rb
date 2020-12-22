#Level order traversal traverses the tree level by level
# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

# For example:
# Given binary tree
root = [3, 9, 20, nil, nil, 15, 7]
# #     3
#    / \
#   9  20
#     /  \
#    15   7

#Output: [
#   [3],
#   [9,20],
#   [15,7]
# ]

def level_order(root, level = 0, arr = [])
    return arr if arr.count == 0
    arr[level] << root.val
    puts "arr[level]"
    level_order(root.left, arr, level + 1)
    level_order(root.right, arr, level + 1)
end

puts level_order(root, level = 0, arr = [])

#why won't this file run? 
