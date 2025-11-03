# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
    sorted = heights.sort
    count = 0
    heights.each_with_index do |height, ind|
        if sorted[ind] != height
            count += 1
        end
    end
    count
end