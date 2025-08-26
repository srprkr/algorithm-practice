require 'algorithms'

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    heap = Containers::MaxHeap.new(score)
    stones.each {|stone| heap.push(stone)}

    while heap.size > 1
        first = heap.pop
        second = heap.pop
        diff = first - second
        heap.push(diff) if diff > 0
    end
    
    heap.empty? ? 0 : heap.pop
end