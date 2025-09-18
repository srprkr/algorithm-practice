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
def sum_numbers(root)
    return 0 if root.nil?

    total_sum = []
    
    def collect_paths(node, number, total_sum)
        return if node.nil?

        number = number + node.val.to_s

        if node.left.nil? && node.right.nil?
            total_sum << number.to_i
            return
        end

        collect_paths(node.left, number, total_sum) if node.left
        collect_paths(node.right, number, total_sum) if node.right

    end

    collect_paths(root, "", total_sum)

    return total_sum.reduce(:+)

end