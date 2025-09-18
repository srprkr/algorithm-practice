# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
    sum = 0
    max_l = 0
    mapper = {}

    nums.each_with_index do |num, i|
        sum += num == 0 ? -1 : 1
        if sum == 0
            max_l = i + 1
        elsif mapper.key?(sum)
            max_l = [max_l, i - mapper[sum]].max
        else
            mapper[sum] = i
        end

    end
    
    max_l
end