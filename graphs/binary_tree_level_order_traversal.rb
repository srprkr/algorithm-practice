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
def level_order(root)
    queue = []

    queue << root
    result = []

    while !queue.empty?
        level = []

        queue.size.times do
            curr = queue.shift

            next if curr.nil?

            level << curr.val
            
            queue << curr.left if !curr.left.nil?
            queue << curr.right if !curr.right.nil?
        end
        result << level if !level.empty?
    end
    result
end