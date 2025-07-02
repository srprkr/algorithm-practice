# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    result = []

    def inorder(node, result)
        return if node.nil?

        inorder(node.left, result)
        result << node.val
        inorder(node.right, result)
    end
    inorder(root, result)
    result
end