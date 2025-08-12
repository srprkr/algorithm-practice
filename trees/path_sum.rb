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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
    return false if root.nil?
    
    remaining = target_sum - root.val

    if root.left.nil? && root.right.nil?
        return remaining == 0
    end

    has_path_sum(root.left, remaining) || has_path_sum(root.right, remaining)
end