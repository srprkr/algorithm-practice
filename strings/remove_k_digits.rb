# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
    return "0" if k >= num.size

    stack = []

    num.each_char do |c|
        while !stack.empty? && k > 0 && stack[-1] > c
            stack.pop()
            k -= 1
        end
        stack << c
    end

    while k > 0
        stack.pop
        k -= 1
    end
    
    result = stack.join.sub(/^0+/, '')

    result.empty? ? "0" : result
end