require 'set'

def jump(nums)
    return 0 if nums.size <= 1

    queue = [[0,0]]
    visited = Set.new([0])

    while !queue.empty?
        index, jumps = queue.shift

        max_jump = [index + nums[index], nums.size - 1].min
        ((index + 1)..max_jump).each do |next_index|
            queue << [next_index, jumps + 1]
            visited << next_index
        end
    end
end