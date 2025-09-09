
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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    current = root

    return root if root == [0] || root == []
    while current
        if current.left
            pre = current.left
           
            while pre.right
                pre = pre.right
            end
           
            pre.right = current.right

            current.right = current.left

            current.left = nil