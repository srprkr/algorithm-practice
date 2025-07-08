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
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
    @result = []
    dfs(root, [], target_sum)

    @result
end

def dfs(node, path, target_sum)
    return if node.nil?
    
    path << node.val
    @result << path.dup if node.left.nil? && node.right.nil? && path.sum == target_sum

    dfs(node.left, path, target_sum)
    dfs(node.right, path, target_sum)

    path.pop
end