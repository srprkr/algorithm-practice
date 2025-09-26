class Solution:
    def minimumTimeRequired(self, jobs: List[int], k: int) -> int:
        left, right = max(jobs), sum(jobs)
        
        while left < right:
            mid = (left + right) // 2
            
            if self.can_finish_in_time(jobs, k, mid):
                right = mid
            else:
                left = mid + 1
        
        return left
    
    def can_finish_in_time(self, jobs: List[int], k: int, max_time: int) -> bool:
        sorted_jobs = sorted(jobs, reverse=True)
        workers = [0] * k
        
        return self.backtrack(sorted_jobs, 0, workers, max_time)
    
    def backtrack(self, jobs: List[int], job_index: int, workers: List[int], max_time: int) -> bool:
        if job_index == len(jobs):
            return True
        
        current_job = jobs[job_index]
        
        for i in range(len(workers)):
            if workers[i] + current_job > max_time:
                continue
            
            skip = False
            for j in range(i):
                if workers[i] == workers[j]:
                    skip = True
                    break
            if skip:
                continue
            
            workers[i] += current_job
            
            if self.backtrack(jobs, job_index + 1, workers, max_time):
                return True
            
            workers[i] -= current_job
            
            if workers[i] == 0:
                break
        
        return False