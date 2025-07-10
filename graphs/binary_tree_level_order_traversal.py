# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def levelOrder(self, root: Optional[TreeNode]) -> List[List[int]]:
        queue = []

        queue.append(root)
        result = []

        while queue:
            level = []
            n = len(queue)

            for nums in range (n)
                curr = queue.popleft

                if curr is empty:
                    return next

                level.append(curr.val)
                
                if curr.left is not None:
                    queue.append(curr.left)
                if curr.right is not None:
                    queue.append(curr.right)

            if level:
                result.append(level)

        return result