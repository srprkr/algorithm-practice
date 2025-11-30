require 'algorithms'
include Containers

def k_closest(points, k)
    heap = Containers::PriorityQueue.new

    points.each do |pt|
        dist = pt[0] ** 2 + pt[1] ** 2
        heap.push(pt, -dist)
    end

    res = []
    k.times do
        res << heap.pop
    end
    res
end