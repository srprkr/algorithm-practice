# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isMirror(self, leftSub, rightSub):
        if leftSub is None and rightSub is None:
            return True

        if leftSub is None or rightSub is None or leftSub.val != rightSub.val:
            return False

        return self.isMirror(leftSub.left, rightSub.right) and self.isMirror(leftSub.right, rightSub.left)

    def isSymmetric(self, root: Optional[TreeNode]) -> bool:
        if root is None:
            return True

        return self.isMirror(root.left, root.right)