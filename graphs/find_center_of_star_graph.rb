def find_center(edges)
    edges[0].each do |num|
        return num if edges[1].include?(num)
    end
    num
end