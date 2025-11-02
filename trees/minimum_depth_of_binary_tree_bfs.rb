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
def min_depth(root)
    return 0 if root.nil?
    queue = [root]
    depth = 0
    
    while !queue.empty?
        n = queue.size
        n.times do
            current_node = queue.shift
            if current_node.left.nil? && current_node.right.nil?
                return depth + 1
            end
            queue << current_node.left if current_node.left
            queue << current_node.right if current_node.right
        end
        depth += 1
    end
    depth
end