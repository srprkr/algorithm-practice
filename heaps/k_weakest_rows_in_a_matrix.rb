def k_weakest_rows(mat, k)
    soldier_counts = mat.map.with_index do |row, idx|
        [row.count(1), idx]
    end.sort
    
    soldier_counts[0...k].map(&:last)
end