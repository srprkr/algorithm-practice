# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def rightSideView(self, root: Optional[TreeNode]) -> List[int]:
        right_view = []

        if root is None:
            return right_view

        self.dfs(root, 0, right_view)
        return right_view

    def dfs(self, node, depth, right_view):

        if node is None:
            return
        
        if depth == len(right_view):
            right_view.append(node.val)

        self.dfs(node.right, depth + 1, right_view)
        self.dfs(node.left, depth + 1, right_view)