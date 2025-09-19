# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    seen = {}
    arr = s.split("")

    s.each_char do |char|
        if seen[char].nil?
            seen[char] = 1
        else
            seen[char] += 1
        end
    end

    s.each_char do |a|
        return arr.index(a) if seen[a] == 1
    end

    return -1
end