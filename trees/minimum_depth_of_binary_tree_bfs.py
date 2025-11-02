# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def minDepth(self, root: Optional[TreeNode]) -> int:
        if root is None:
            return 0

        queue = deque([root])
        depth = 0

        while queue:
            n = len(queue)
            for _ in range(n):
                current_node = queue.popleft()
                if current_node.left is None and current_node.right is None:
                        return depth + 1
                if current_node.left:
                        queue.append(current_node.left)
                if current_node.right:
                        queue.append(current_node.right)
            depth += 1
        return depth