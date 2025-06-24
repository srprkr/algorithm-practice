def circular_array_loop(nums)
  n = nums.size
  visited = Array.new(n, false)

  n.times do |start|
    next if visited[start]
    direction = nums[start] > 0
    idx = start
    path = Array.new(n, false)

    while true
      break if nums[idx] > 0 != direction

      next_idx = (idx + nums[idx]) % n
      next_idx += n if next_idx < 0

      break if next_idx == idx

      return true if path[next_idx]

      path[idx] = true
      visited[idx] = true

      idx = next_idx
    end
  end

  false
end