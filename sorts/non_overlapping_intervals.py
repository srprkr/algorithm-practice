class Solution:
    def eraseOverlapIntervals(self, intervals: List[List[int]]) -> int:
      if not intervals:
        return 0

      intervals.sort(key=lambda interval: interval[1])

      count = 0
      end_time = intervals[0][1]

      for interval in intervals[1:]:
        if interval[0] < end_time:
          count += 1
        else:
          end_time = interval[1]

      return count