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
def count_nodes(root)
    return 0 if root.nil?

    queue = [root]
    count = 0

    while !queue.empty?
        node = queue.shift
        count += 1
        queue.push(node.left) if node.left
        queue.push(node.right) if node.right
    end
end