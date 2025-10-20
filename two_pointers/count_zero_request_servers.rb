def count_servers(n, logs, x, queries)
    logs.sort_by! { |l| l[1] }
    
    queries_with_index = queries.each_with_index.map { |q, idx| [q, idx] }.sort
    
    left = right = 0
    m = logs.length
    servers_in_window = Hash.new(0)
    ans = Array.new(queries.length, 0)
    
    queries_with_index.each do |end_time, idx|
        start = end_time - x
        
        while right < m && logs[right][1] <= end_time
            servers_in_window[logs[right][0]] += 1
            right += 1
        end
        
        while left < right && logs[left][1] < start
            servers_in_window[logs[left][0]] -= 1
            servers_in_window.delete(logs[left][0]) if servers_in_window[logs[left][0]] == 0
            left += 1
        end
        
        ans[idx] = n - servers_in_window.size
    end
    
    ans
end