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
# @return {Integer}
def min_depth(root)
    return 0 if root.nil?
    left, right = min_depth(root.left), min_depth(root.right)
    1 + (left.zero? || right.zero? ? left + right : [left, right].min)
end