def find_bottom_left_value(root)
    node_queue = [root]
    bottom_left_value = 0

    while !node_queue.empty?
        bottom_left_value = node_queue[0].val

        level_size = node_queue.size
        level_size.times do
            node = node_queue.shift

            node_queue << node.left if node.left
            node_queue << node.right if node.right
        end
      end
      
      bottom_left_value
end