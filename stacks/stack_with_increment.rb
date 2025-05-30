class CustomStack
    attr_reader :nums

    def initialize(max_size)
        @nums = []
        @max_size = max_size
    end


    def push(x)
        @nums.push(x) unless @nums.length >= @max_size
    end


    def pop()
        @nums.empty? ? -1 : @nums.pop

    end


    def increment(k, val)
        elements_to_sum = [k, @nums.length].min

        elements_to_sum.times do |i|
            @nums[i] += val
        end
    end


end
