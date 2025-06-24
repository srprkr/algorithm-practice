class Node
    attr_accessor :freq, :prev, :next, :keys
    def initialize(freq)
        @freq = freq 
        @prev = nil
        @next = nil
        @keys = Set.new
    end
end

class AllOne
    attr_accessor: head, tail, map

    def initialize()
        @head = Node.new(0)
        @tail = Node.new(0)
        @head.next = @tail
        @tail.prev = @head
        @map = {}
    end


=begin
    :type key: String
    :rtype: Void
=end
    def inc(key)
        if map.key?(key)
            node = map[key]
            freq = node.freq
            node.keys.delete(key)

            next_node = node.next
            if next_node == tail || next_node.freq != freq + 1
                new_node = Node.new(freq + 1)
                new_node.keys.add(key)
                new_node.prev = node
                new_node.next = next_node
                node.next = new_node
                next_node.prev = new_node
                map[key] = new_node
            else
                next_node.keys.add(key)
                map[key] = next_node
            end

            remove_node(node) if node.keys.empty?
        else
            first_node = head.next
            if first_node == tail || first_node.freq > 1
                new_node = Node.new(1)
                new_node.keys.add(key)
                new_node.prev = head
                new_node.next = first_node
                head.next = new_node
                first_node.prev = new_node
                map[key] = new_node
            else
                first_node.keys.add(key)
                map[key] = first_node
            end
        end
    end


=begin
    :type key: String
    :rtype: Void
=end
    def dec(key)
        return unless map[key]

        node = map[key]
        node.keys.delete(key)
        freq = node.freq

        if freq == 1
            map.delete(key)
        else
            prev_node = node.prev
            if prev_node == head || prev_node.freq != freq - 1
                new_node = Node.new(freq - 1)
                new_node.keys.add(key)
                new_node.prev = prev_node
                new_node.next = node
                prev_node.next = new_node
                node.prev = new_node
                map[key] = new_node
            else
                prev_node.keys.add(key)
                map[key] = prev_node
            end
        end
        
        remove_node(node) if node.keys.empty?
    end

=begin
    :rtype: String
=end
    def get_max_key()
        return "" if tail.prev == head
        tail.prev.keys.first
    end

=begin
    :rtype: String
=end
    def get_min_key() 
        return "" if head.next == tail
        head.next.keys.first
    end


    def remove_node(node)
        prev_node = node.prev
        next_node = node.next
        
        prev_node.next = next_node
        next_node.prev = prev_node
    end
end
# Your AllOne object will be instantiated and called as such:
# obj = AllOne.new()
# obj.inc(key)
# obj.dec(key)
# param_3 = obj.get_max_key()
# param_4 = obj.get_min_key()