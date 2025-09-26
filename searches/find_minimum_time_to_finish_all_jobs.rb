def minimum_time_required(jobs, k)
    left, right = jobs.max, jobs.sum

    while left < right
        mid = (left + right) / 2

        if can_finish_in_time(jobs, k, mid)
            right = mid
        else
            left = mid + 1
        end
    end

    left
end

def can_finish_in_time(jobs, k, max_time)
    sorted_jobs = jobs.sort.reverse
    workers = Array.new(k, 0)
    
    backtrack(sorted_jobs, 0, workers, max_time)
end

def backtrack(jobs, job_index, workers, max_time)
    return true if job_index == jobs.length
    
    current_job = jobs[job_index]
    
    workers.length.times do |i|
        next if workers[i] + current_job > max_time
        
        skip = false
        (0...i).each do |j|
            if workers[i] == workers[j]
                skip = true
                break
            end
        end
        next if skip
        
        workers[i] += current_job
        
        if backtrack(jobs, job_index + 1, workers, max_time)
            return true
        end
        
        workers[i] -= current_job
        
        break if workers[i] == 0
    end
    
    false
end