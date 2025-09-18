
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    result = []

    nums.each_with_index do |num, i|
            nums.each_with_index do |num, j|
                next if i == j
                nums.each_with_index do |num, k|
                    next if i == k || j == k
                        triplet = [nums[i], nums[j], nums[k]]
                        puts "i: #{i}"
                        puts "j: #{j}"
                        puts "k: #{k}"
                    
                    return [] if !triplet

                    result << triplet if triplet.sort!.sum == 0
                end
            end
    end

    result.uniq

end