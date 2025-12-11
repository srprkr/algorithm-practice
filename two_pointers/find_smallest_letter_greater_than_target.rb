# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    left = 0
    right = letters.size - 1

    while left <= right
        middle = left + (right - left) / 2

        if letters[middle] > target
            right = middle - 1
        else
            left = middle + 1
        end
    end

    letters[left % letters.size]
end