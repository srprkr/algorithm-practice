# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
    res = []

    dfs = lambda do |node|
        if node.nil?
            res << "x"
            return
        end

        res << node.val.to_s
        dfs.call(node.left)
        dfs.call(node.right)
    end

    dfs.call(root)

    res.join(" ")
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
    nodes = data.split(" ")
    index = 0

    dfs = lambda do
        val = nodes[index]
        index += 1
        return nil if val == "x"

        cur = TreeNode.new(val.to_i)
        cur.left = dfs.call
        cur.right = dfs.call
        cur
    end

    dfs.call
end


# Your functions will be called as such:
# deserialize(serialize(data))