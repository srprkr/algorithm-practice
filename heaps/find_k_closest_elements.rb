require 'algorithms'

def find_closest_elements(arr, k, x)
    res = []
    return res if arr.size < k

    min_heap = Containers::MinHeap.new
    arr.each do |num|
      min_heap.push([((num - x).abs), num])
    end
    
    k.times do
      res << min_heap.pop[1]
    end
    res.sort
end