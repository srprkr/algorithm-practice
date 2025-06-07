def max_chocolates   
  total_possible = 0
  mod = (10**9 + 7)
  
  a.times do 
      max = b.max
      b.delete_at(b.index(max))
      total_possible = (total_possible + max) % mod
      b.push(max / 2)
  end

  total_possible
end