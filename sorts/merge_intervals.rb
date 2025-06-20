def merge(intervals)
    return 0 if intervals.empty?

    intervals.sort_by! { |interval| interval[0] }
    result = [intervals[0]]

    intervals[1..-1].each do |interval|
        last = result[-1]
        if interval[0] <= last[1]
          last[1] = [last[1], interval[1]].max
        else
          result << interval
        end
    end

    result
end