# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    # more "from scratch" solution
    # s.each_with_index do |num, i|
    
    left, right = 0, s.size - 1
    while left < right
        s[left], s[right] = s[right], s[left]
        left += 1
        right -= 1
    end
end