# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sumNumbers(self, root: Optional[TreeNode]) -> int:
        if not root:
            return 0

        total_sum = []

        def collect_paths(node: TreeNode, number: str, total_sum: List[int]) -> None:
            if not node:
                return

            number = number + str(node.val)

            if not node.left and not node.right:
                total_sum.append(int(number))
                return

            if node.left:
                collect_paths(node.left, number, total_sum)
            if node.right:
                collect_paths(node.right, number, total_sum)

        collect_paths(root, "", total_sum)

        return sum(total_sum)