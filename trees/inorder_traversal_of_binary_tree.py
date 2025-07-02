# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def inorderTraversal(self, root):
        """
        :type root: Optional[TreeNode]
        :rtype: List[int]
        """

        result = []
        
        def inorder(node):
            if root is None:
                return

            self.inorder(node.left):
            result.append(node.val)

            print(root.val, end=' ')

            self.inorder(root.right)
        self.inorder(root)
        return result