from collections import deque

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def findBottomLeftValue(self, root: Optional[TreeNode]) -> int:
        node_queue = deque([root])

        bottom_left_value = 0

        while node_queue:
            bottom_left_value = node_queue[0].val

            for _ in range(len(node_queue)):
                node = node_queue.popleft()

                if node.left:
                    node_queue.append(node.left)

                if node.right:
                    node_queue.append(node.right)

        return bottom_left_value