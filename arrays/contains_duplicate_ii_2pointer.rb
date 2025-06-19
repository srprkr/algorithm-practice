require 'set'

def contains_nearby_duplicate(nums, k)

    window = Set.new

    nums.each_with_index do |num, i|
        return true if window.include?(num)
        window.add(num)
        window.delete(nums[i - k]) if window.size > k
    end

    false
end