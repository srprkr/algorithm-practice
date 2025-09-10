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
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
        stack = []
        current_node = root

        while current_node || stack
            if current_node
                stack << current_node
                current_node = current_node.left
            else
                current_node = stack.pop()

                k -= 1

                if k == 0
                    return current_node.val
                end

            current_node = current_node.right
            end
        end
end