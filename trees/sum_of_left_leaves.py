# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sumOfLeftLeaves(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        sum_left_leaves = 0

        if root.left and root.left.left is None and root.left.right is None:
            sum_left_leaves += root.left.val

        sum_left_leaves += self.sumOfLeftLeaves(root.left) 
        sum_left_leaves += self.sumOfLeftLeaves(root.right)

        return sum_left_leaves