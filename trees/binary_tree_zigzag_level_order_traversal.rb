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
# @return {Integer[][]}
def zigzag_level_order(root)
    return [] if root.nil?
    res = []

    queue = ([root])
    left_to_right = true
    while !queue.empty?
        n = queue.size
        new_level = []        
        n.times do
            node = queue.shift
            if left_to_right
                new_level << node.val
            else
                new_level.unshift(node.val)
            end
            queue << node.left if node.left
            queue << node.right if node.right
        end
        res << new_level
        left_to_right = !left_to_right
    end
    res
end