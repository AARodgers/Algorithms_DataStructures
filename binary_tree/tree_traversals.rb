require 'pry'
# ? get this error when run file: undefined method `val' for [1, nil, 2, 3]:Array (NoMethodError)

# root = [1, nil, 2, 3]

# # Definition for a binary tree node.
#     # @param {TreeNode} root
#     # @return {Integer[]}

# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

# #Given the root of a binary tree, return the preorder traversal of its nodes' values.
# #Input: root = [1,null,2,3]
# #Output: [1,2,3]

# def preorder_traversal(root)
#     arr = []

#     if root == nil
#         return []
#     end

#     arr << root.val
#     left = preorder_traversal(root.left)
#     right = preorder_traversal(root.right)
#     arr + left + right
# end

# preorder_traversal(root)

# def inorder_traversal(root)
#     arr = []
#     if root == nil
#         return []
#     end
#     left = inorder_traversal(root.left)
#     arr << root.val
#     right = inorder_traversal(root.right)
#     left + arr + right
# end

# def postorder_traversal(root)
#     arr = []

#     if root == nil
#         return []
#     end

#     arr << root.val
#     left = postorder_traversal(root.left)
#     right = postorder_traversal(root.right)

#     left + right + arr
# end

#Level order traversal traverses the tree level by level
# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

# For example:
# Given binary tree
root = [3, 9, 20, nil, nil, 15, 7]
#     3
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
  level_order(root.left, arr, level + 1)
  level_order(root.right, arr, level + 1)
end

puts level_order(root, level = 0, arr = [])


binding.pry
#why can't run
# error for pry
# can put a value in an array at an index using arr[level]
# in rails form_tag do you need a real IP address and how get it
