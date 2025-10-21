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
# @return {Integer[]}
def postorder_traversal(root)
    return [] if root.nil?

    left = postorder_traversal(root.left)
    right = postorder_traversal(root.right)

    left + right + [root.val]
end