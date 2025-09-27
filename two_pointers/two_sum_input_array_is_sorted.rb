# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    low, high = 0, numbers.size - 1

    while low < high
        two_sum = numbers[low] + numbers[high]
        if two_sum == target
            return [low + 1, high + 1]
        elsif two_sum < target
            low += 1
        else 
            high -= 1
        end
    end
end