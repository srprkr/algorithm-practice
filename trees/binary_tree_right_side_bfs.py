from collections import deque
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

        queue = deque([root])

        while queue:
            right_view.append(queue[-1].val)

            for _ in range(len(queue)):
                current_node = queue.popleft()
                if current_node.left:
                    queue.append(current_node.left)

                if current_node.right:
                    queue.append(current_node.right)

        return right_view