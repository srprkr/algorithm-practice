# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
    g.sort!
    s.sort!
    count = 0

    i, j = 0, 0

    while i < g.size && j < s.size
        if g[i] <= s[j]
            count += 1
            i += 1
        end
        j += 1
    end
    count

end