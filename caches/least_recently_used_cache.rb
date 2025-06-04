class Node
    attr_accessor :key, :value, :prev, :next

    def initialize(key, value)
        @key = key
        @value = value
        @prev = nil
        @next = nil
    end
end

class LRUCache
    def initialize(capacity)
        @capacity = capacity
        @cache = {}
        @head = Node.new(0,0)
        @tail = Node.new(0,0)
        @head.next = @tail
        @tail.prev = @head    
    end

    def get(key)
        node = @cache[key]
        return -1 unless node

        move_to_head(node)
        node.value
    end

    def put(key, value)
        node = @cache[key]

        if node
            node.value = value
            move_to_head(node)
        else
            new_node = Node.new(key, value)
            @cache[key] = new_node
            add_node(new_node)
        

            if @cache.size > @capacity
                tail = pop_tail
                @cache.delete(tail.key)
            end 
        end
    end

    private
    def add_node(node)
        node.prev = @head
        node.next = @head.next
        @head.next.prev = node
        @head.next = node
    end

    def remove_node(node)
        prev = node.prev
        next_node = node.next
        prev.next = next_node
        next_node.prev = prev
    end

    def move_to_head(node)
        remove_node(node)
        add_node(node)
    end

    def pop_tail
        res = @tail.prev
        remove_node(res)
        res
    end
end
