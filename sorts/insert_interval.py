class Solution:
    def insert(self, intervals: List[List[int]], newInterval: List[int]) -> List[List[int]]:
        result = []

        for i, interval in enumerate(intervals):
            # if interval after
            if newInterval[1] < interval[0]:
                
                result.append(newInterval)
                return result + intervals[i:]
            # if interval before
            elif newInterval[0] > interval[1]:
                result.append(interval)
            # overlapping
            else:
                newInterval = [min(interval[0], newInterval[0]), max(interval[1], newInterval[1])]
            
        result.append(newInterval)
        return result