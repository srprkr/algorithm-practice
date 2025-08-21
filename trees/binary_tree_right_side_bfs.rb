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
def right_side_view(root)
    right_view = []

    return right_view if root.nil?

    queue = [root]

    while !queue.empty?
        right_view << queue.last.val

        level_size = queue.size
        level_size.times do
            current_node = queue.shift
            queue << current_node.left if current_node.left
            queue << current_node.right if current_node.right
        end
    end

    right_view
end