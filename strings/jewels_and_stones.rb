# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    jewel_set = jewels.chars.uniq
    count = 0

    stones.chars.each do |stone|
        if jewel_set.include?(stone)
            count += 1
        end
    end
    return count
end