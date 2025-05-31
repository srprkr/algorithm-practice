class Solution
    # @param a : array of integers
    # @return an array of integers
    def prevSmaller(a)
        stack = []
        result = Array.new(a.length)

       a.each_with_index do |num, i|
            while !stack.empty? && stack.last >= num
                stack.pop
            end
            result[i] = stack.empty? ? -1 : stack.last
            stack.push(num)
        end

        result
    end
end