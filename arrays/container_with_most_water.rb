#two pointer approach

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    i = 0
    j = height.size - 1
    ans = 0

    while i < j
        mini = [height[i], height[j]].min
        ans = [ans, mini * (j - i)].max

        if height[i] < height[j]
            i += 1
        else
            j -= 1
        end
    end

    ans
end