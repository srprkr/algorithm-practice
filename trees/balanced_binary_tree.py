# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

class Solution:
    def isBalanced(self, root: Optional[TreeNode]) -> bool:
        return self.balancedHeight(root, 0) >= 0
        
    def balancedHeight(self, root: Optional[TreeNode], height: int) -> int:
        if not root:
            return height
            
        left = self.balancedHeight(root.left, height + 1)
        right = self.balancedHeight(root.right, height + 1)
        
        # Check for unbalanced subtrees or height difference > 1
        if left == -1 or right == -1 or abs(left - right) > 1:
            return -1
            
        return max(left, right)