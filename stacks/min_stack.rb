class MinStack
    attr_reader :items

    def initialize()
        @items = []
        @min_stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @items.push(val)
        @min_stack.empty? || val <= @min_stack.last ? @min_stack.push(val) : @min_stack.push(@min_stack.last)   
    end


=begin
    :rtype: Void
=end
    def pop()
        @items.pop
        @min_stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
        @items.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @min_stack.last
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()