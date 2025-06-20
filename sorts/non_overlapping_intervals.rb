def erase_overlap_intervals(intervals)
  
  return 0 if intervals.empty?
  
  intervals.sort_by! { |interval| interval[1] }

  count = 0

  end_time = intervals[0][1]

  intervals[1..-1].each do |interval|
    if interval[0] < end_time
      count += 1
    else
      end_time = interval[1]
    end
  end

  count
end