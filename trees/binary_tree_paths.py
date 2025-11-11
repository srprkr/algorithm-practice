# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def binaryTreePaths(self, root: Optional[TreeNode]) -> List[str]:
        if node is None:
            return []
        elif node.left is None and node.right is None:
            return [[node.val]]
        else:
            allpaths = dfs(node.left) + dfs(node.right)
            for path in allpaths:
                path.insert(0, node.val)
            return allpaths

        return ['->'.join(map(str, path)) for path in dfs(root)]
        