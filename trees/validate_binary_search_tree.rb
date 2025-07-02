# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_valid_bst(root)
    is_valid(root, -Float::INFINITY, Float::INFINITY)
end

def is_valid(node, left, right)
    return true if node.nil?
    return false unless left < node.val && node.val < right
    is_valid(node.left, left, node.val) && is_valid(node.right, node.val, right)
end