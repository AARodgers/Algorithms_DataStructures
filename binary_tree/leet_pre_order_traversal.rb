require 'pry'

# ? get this error when run file: undefined method `val' for [1, nil, 2, 3]:Array (NoMethodError)

root = [1, nil, 2, 3]

# Definition for a binary tree node.
    # @param {TreeNode} root
    # @return {Integer[]}

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

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

preorder_traversal(root)

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
