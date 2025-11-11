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
# @return {String[]}
def binary_tree_paths(root)
    def dfs(node)
        if node.nil?
            []
        elsif node.left.nil? && node.right.nil?
            [[node.val]]
        else
            allpaths = dfs(node.left).concat(dfs(node.right))
            allpaths.each { |path| path.unshift(node.val)}
            allpaths
        end
    end

    dfs(root).map{ |path| path.join('->') }
end