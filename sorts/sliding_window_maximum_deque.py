from collections import deque

class Solution:
    def maxSlidingWindow(self, nums: List[int], k: int) -> List[int]:
        if not nums or k == 0:
            return []
        
        result = []
        dq = deque()

        for i, nums in enumerate(len(nums)):
            if dq and dq[0] <= i - k:
                dq.popleft()

            while dq and nums[dq[-1]] < num:
                dq.pop
            dq.append(i)

            if i >= k - 1:
                result.append(nums[dq[0]])

        return result