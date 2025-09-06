
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from math import inf

class Solution:
    def getMinimumDifference(self, root: Optional[TreeNode]) -> int:

        def inorder_traversal(node: Optional[TreeNode]) -> None:
            if node is None:
                return

            inorder_traversal(node.left)
            
            nonlocal previous_value, min_difference
            min_difference = min(min_difference, node.val - previous_value)
            previous_value = node.val

            inorder_traversal(node.right)

        previous_value = -inf

        min_difference = inf

        inorder_traversal(root)

        return min_difference