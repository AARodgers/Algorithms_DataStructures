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

class Node
    attr_accessor :value, :root

    def initialize
        @value = value
        @root = root
    end
end
# @param {TreeNode} root
# @return {Integer[]}

#Ex1. Input: root = [1,null,2,3]
# Output: [1,2,3]

root = [1,nil,2,3]

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

recursive_preorder_traversal(root)

binding.pry

# how do i get this to run?
