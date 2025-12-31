require 'algorithms'

class MedianFinder
    def initialize
        @max_heap = Containers::MaxHeap.new
        @min_heap = Containers::MinHeap.new
    end
    
    def add_num(num)
        if @max_heap.empty? || num <= @max_heap.max
            @max_heap.push(num)
        else
            @min_heap.push(num)
        end
        balance
    end
    
    def find_median
        if @max_heap.size == @min_heap.size
            return (@max_heap.max + @min_heap.min) / 2.0
        else
            return @max_heap.max.to_f
        end
    end

    private

    def balance
        if @max_heap.size < @min_heap.size
            @max_heap.push(@min_heap.pop)
        elsif @max_heap.size > @min_heap.size + 1
            @min_heap.push(@max_heap.pop)
        end
    end
end