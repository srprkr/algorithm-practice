# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import deque

class Solution:
    def zigzagLevelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        res = []

        queue = deque([root])
        left_to_right = True
        while len(queue) > 0:
            n = len(queue)
            new_level: deque[int] = deque()
            for _ in range(n):
                node = queue.popleft()
                if left_to_right:
                    new_level.append(node.val)
                else:
                    new_level.appendleft(node.val)
                for child in [node.left, node.right]:
                    if child is not None:
                        queue.append(child)
            res.append(list(new_level))
            left_to_right = not left_to_right
        return res