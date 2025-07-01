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
def is_symmetric(root)
    return true if root.nil?
    is_mirror(root.left, root.right)
end

private

def is_mirror(left_sub, right_sub)
    return true if left_sub.nil? && right_sub.nil?
    return false if left_sub.nil? || right_sub.nil? || left_sub.val != right_sub.val

    is_mirror(left_sub.left, right_sub.right) && is_mirror(left_sub.right, right_sub.left)
end