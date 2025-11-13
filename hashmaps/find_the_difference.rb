def find_the_difference(s, t)
    count = Hash.new(0)
    (s + t).each_char do |chr|
        count[chr] += 1
    end
    count.each do |chr, freq|
        return chr if freq == 1
    end
end 