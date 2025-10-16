# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    return true if num == 1

    left = 2
    right = num / 2

    while left <= right
        mid = left + (right - left) / 2
        square = mid * mid

        return true if square == num

        if square > num
            right = mid - 1
        else
            left = mid + 1
        end
    end

    false
end