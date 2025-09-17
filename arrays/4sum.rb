# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
    n = nums.size

    result = []

    return result if n < 4

    nums.sort!

    (0..n - 4).each do |i|
        next if i > 0 && nums[i] == nums[i - 1]
    
        break if nums[i] + nums[i + 1] + nums[i + 2] + nums[i + 3] > target
        next if nums[i] + nums[n - 3] + nums[n - 2] + nums[n - 1] < target

        (i + 1..n - 3).each do |j|
            next if j > i + 1 && nums[j] == nums[j - 1]

            break if nums[i] + nums[j] + nums[j + 1] + nums[j + 2] > target
            next if nums[i] + nums[j] + nums[n - 2] + nums[n - 1] < target

            left = j + 1
            right = n - 1

            while left < right
                current_sum = nums[i] + nums[j] + nums[left] + nums[right]

                if current_sum < target
                    left += 1
                elsif current_sum > target
                    right -= 1
                else
                    result << [nums[i], nums[j], nums[left], nums[right]]

                    left += 1
                    right -= 1

                    left += 1 while left < right && nums[left] == nums[left - 1]
                    right -= 1 while left < right && nums[right] == nums[right + 1]
                
                end
            end
        end
    end
    result
end