class MyCircularDeque
    attr_reader :nums

    def initialize(k)
        @deque = []
        @max_size = k
    end

    def insert_front(value)
        return @deque.unshift(value) ? true : false unless @deque.size == @max_size
    end

    def insert_last(value)
        return @deque.push(value) ? true : false
    end

    def delete_front()
        return @deque.shift ? true : false
    end

    def delete_last()
        return @deque.pop ? true : false
    end

    def get_front()
        @deque.shift
    end

    def get_rear()
        @deque.pop
    end

    def is_empty()
        @deque.empty?
    end


    def is_full()
        @deque.size == @max_size
    end


end
