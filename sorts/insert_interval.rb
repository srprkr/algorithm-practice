def insert(intervals, new_interval)
    result = []

    intervals.each_with_index do |interval, i|

        # if interval after
        if new_interval[1] < interval[0]
            
            result << new_interval
            return result + intervals[i...intervals.size]
        # if interval before
        elsif new_interval[0] > interval[1]
            result << interval
        # overlapping
        else
            new_interval = [[interval[0],new_interval[0]].min, [interval[1], new_interval[1]].max]
        end
    end
    result << new_interval
    result

end