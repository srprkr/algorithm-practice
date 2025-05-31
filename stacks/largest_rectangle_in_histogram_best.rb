def largest_rectangle_area(heights)
    n = heights.size
    stack = []
    res = 0

    n.times do |i|
        while !stack.empty? && heights[stack[-1]] >= heights[i]
            top = stack.pop()

            width = stack.empty? ? i : i -r stack.last - 1

            res = [res, heights[top] * width].max
        end

        stack.push(i)
    end

    while !stack.empty?

        top = stack.pop
        width = stack.empty? ? n : n - stack[-1] - 1
        res = [res, heights[top] * width].max

    end
    res

end