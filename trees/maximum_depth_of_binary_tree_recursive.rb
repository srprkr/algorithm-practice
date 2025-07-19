# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
def max_depth(root)
    return 0 if root.nil?
    
    left = max_depth(root.left)
    right = max_depth(root.right)
    
    [left, right].max + 1
end
