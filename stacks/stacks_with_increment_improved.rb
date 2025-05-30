class CustomStack
    attr_reader :nums

    def initialize(max_size)
        @nums = []
        @max_size = max_size
        @increments = Array.new(max_size, 0)
    end


    def push(x)
        return if @nums.length >= @max_size
        @nums.push(x)
    end


    def pop()
        return -1 if @nums.empty?
        i = @nums.length - 1
        
        if i > 0
          @increments[i-1] += @increments[i]
        end
        
        result = @nums.pop + @increments[i]
        @increments[i] = 0
        result
    end


    def increment(k, val)
        i = [k, @nums.length].min - 1
        @increments[i] += val if i >= 0
    end


end
