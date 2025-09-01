# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    return nil if preorder.empty?

    inorder_map = {}
    inorder.each_with_index { |val, idx| inorder_map[val] = idx}

    def build_helper(preorder, inorder_map, pre_start, pre_end, in_start, in_end)
        return nil if pre_start > pre_end

        root = TreeNode.new(preorder[pre_start])

        root_idx = inorder_map[root.val]
        left_size = root.idx - in_start

        root.left = build_helper(preorder, inorder_map, 
                            pre_start + 1, pre_start + left_size,
                            in_start, root_idx - 1)
        root.right = build_helper(preorder, inorder_map,
                            pre_start + left_size + 1, pre_end,
                            root_idx + 1, in_end)

        root
    end

    build_helper(preorder, inorder_map, 0, preorder.length - 1, 0, inorder.length - 1)
end