# @param {Integer} n
# @return {Integer}
require 'algorithms'

def nth_ugly_number(n)
    
    heap = Containers::MinHeap.new
    used = Set.new
    heap.push(1)
    used.add(1)
    allowed_prime = [2, 3, 5]

    (n - 1).times do
        val = heap.pop
        allowed_prime.each do |mult|
            next_val = val * mult
            unless used.include?(next_val)
                heap.push(next_val)
                used.add(next_val)
            end
        end
    end
    heap.pop
end