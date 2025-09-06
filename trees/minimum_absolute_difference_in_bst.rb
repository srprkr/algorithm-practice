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
# @return {Integer}
def get_minimum_difference(root)
    @prev_value = Float::INFINITY * -1
    @min_difference = Float::INFINITY

    def inorder_traversal(node)
        return if node.nil?

        inorder_traversal(node.left)

        @min_difference = [@min_difference, node.val - @prev_value].min
        @prev_value = node.val

        inorder_traversal(node.right)
    end

    inorder_traversal(root)
    @min_difference
end