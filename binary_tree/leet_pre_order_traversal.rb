require 'pry'

# Definition for a binary tree node.
class TreeNode
    attr_accessor :value, :left, :right
    def initialize(value = 0, left = nil, right = nil)
        @value = value
        @left = left
        @right = right
    end
end

# @param {TreeNode} root
# @return {Integer[]}

#Ex1. Input: root = [1,null,2,3]
# Output: [1,2,3]

root = [1, nil, 2, 3]
# how do you define a tree and the root?

def recursive_preorder_traversal(root)
    result = []
    dfs(root, result)
    result
end

def dfs(root, res)
    if root
        res << root.value
        dfs(root.left, res) if root.left
        dfs(root.right, res) if root.right
    end
end
# how does it know that res is an array?

recursive_preorder_traversal(root)



# how do i get this to run?
# error about value is because value is not method that you can run on an array which is what root is

Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}

def preorder_traversal(root)
    arr = []

    if root == nil
        return []
    end

    arr << root.val
    left = preorder_traversal(root.left)
    right = preorder_traversal(root.right)
    arr + left + right
end

def inorder_traversal(root)
    arr = []
    if root == nil
        return []
    end
    left = inorder_traversal(root.left)
    arr << root.val
    right = inorder_traversal(root.right)
    left + arr + right
end

def postorder_traversal(root)
    arr = []

    if root == nil
        return []
    end

    arr << root.val
    left = postorder_traversal(root.left)
    right = postorder_traversal(root.right)

    left + right + arr
end


