def remove_duplicates(s)
    res = []
    s.each_char { |ch| res.last == ch ? res.pop : res << ch }
    res.join 
end