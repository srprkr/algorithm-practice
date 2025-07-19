require 'thread'

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
def max_depth(root)
    q = Queue.new
    return 0 if root.nil?

    q << root
    max_depth = 0
    while !q.empty?
        max_depth += 1
        level_len = q.size

        level_len.times do
            node = q.shift()
            
            q << node.left if node.left
            q << node.right if node.right
        end
    end
    return max_depth
end