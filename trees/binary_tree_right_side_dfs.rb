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
def right_side_view(root)
    right_view = []

    return right_view if root.nil?

    dfs_helper(root, 0, right_view)
    right_view
end

def dfs_helper(node, depth, right_view)
    return if node.nil?

    # If this is the first time we're visiting this depth level,
    # add the current node's value (rightmost at this level)
    if depth == right_view.size
        right_view << node.val
    end

    # Visit right child first, then left child
    # This ensures we see the rightmost nodes first at each level
    dfs_helper(node.right, depth + 1, right_view)
    dfs_helper(node.left, depth + 1, right_view)
end