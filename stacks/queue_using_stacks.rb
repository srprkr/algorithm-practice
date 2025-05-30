class MyQueue
    attr_reader :items

    def initialize()
        @items = []    
    end

    def push(x)
        @items.unshift(x)
    end

    def pop()
        @items.pop
    end

    def peek()
        return @items.last
    end

    def empty()
        return @items.count == 0
    end
end