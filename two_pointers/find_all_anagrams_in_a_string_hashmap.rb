# @param {String} s
# @param {String} p
# @return {Integer[]}
  def find_anagrams(s, p)
    res = []
    return res if s.length < p.length
    
    p_count = Hash.new(0)
    p.each_char { |c| p_count[c] += 1 }
    
    window_count = Hash.new(0)
    p.length.times { |i| window_count[s[i]] += 1 }
    
    res << 0 if window_count == p_count
    
    (p.length...s.length).each do |i|
      window_count[s[i]] += 1
      
      left_char = s[i - p.length]
      window_count[left_char] -= 1
      window_count.delete(left_char) if window_count[left_char] == 0
      
      res << (i - p.length + 1) if window_count == p_count
    end
    
    res
  end