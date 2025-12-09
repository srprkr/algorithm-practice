# @param {String} s
# @return {String}
def reorganize_string(s)
    n = s.size

    char_count = Hash.new(0)
    s.each_char { |c| char_count[c] += 1}

    heap = char_count.to_a.sort_by { |char, count| -count }

    return "" if heap[0][1] > (n + 1) / 2

    res = Array.new(n)

    pointer = 0

    while !heap.empty?
        char, count = heap.shift
        count.times do
            res[pointer] = char
            pointer += 2
            if pointer >= n
                pointer = 1
            end
        end
    end
    
    res.join("")
end