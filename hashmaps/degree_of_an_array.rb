# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
    freq = {}
    first = {}
    last = {}
    
    nums.each_with_index do |n, i|
        freq[n] = (freq[n] || 0) + 1
        first[n] = i if first[n].nil?
        last[n] = i
    end
    
    degree = freq.values.max
    
    freq.select { |n, f| f == degree }
        .map { |n, _| last[n] - first[n] + 1 }
        .min
end