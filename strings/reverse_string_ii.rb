# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
    arr = s.each_slice(k).map(&:join)
    arr.each_with_index do |group, index|
        group.reverse! if index.even?
    end

    arr.join
end