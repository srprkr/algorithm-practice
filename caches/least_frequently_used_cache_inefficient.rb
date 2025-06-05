# Works, but broken on larger datasets
class Node
    attr_accessor :key, :value, :freq, :timestamp, :is_valid
    
    def initialize(key, value, freq=1)
        @key = key
        @value = value
        @freq = freq
        @timestamp = 0
        @is_valid = true
    end

    def <=> (other)
        if @freq == other.freq
            @timestamp <=> other.timestamp
        else
            @freq <=> other.freq
        end
    end
end

class LFUCache

    def initialize(capacity)
        @capacity = capacity
        @cache = {}
        @heap = []
        @key_node = {}
        @timestamp = 0
    end

    def get(key)
        return -1 unless @cache.key?(key)
        node = @cache[key]
        update(node, node.value)
        node.value
    end

    def put(key, value)
        return if @capacity <= 0
        
        if @cache.key?(key)
            node = @cache[key]
            update(node, value)
        else
            evict if @cache.size >= @capacity
            new_node = Node.new(key, value)
            @cache[key] = new_node
            @key_node[key] = new_node
            @heap << new_node
            @heap.sort!
        end
    end

    private

    def update(node, value)
        node.is_valid = false
        new_node = Node.new(node.key, value, node.freq + 1)
        new_node.timestamp = @timestamp
        @timestamp += 1

        @cache[node.key] = new_node
        @key_node[node.key] = new_node
        @heap << new_node
        @heap.sort!
    end

    def evict
        while @heap.any?
            node = @heap.shift
            if node.is_valid && node.equal?(@cache[node.key])
                @cache.delete(node.key)
                @key_node.delete(node.key)
                break
            end
        end
    end
end