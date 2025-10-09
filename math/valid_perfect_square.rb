# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    (0..num).each do |n|
        return n * n == num ? true : next
    end

    false
end