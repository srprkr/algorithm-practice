class Solution:
    def findShortestSubArray(self, nums: List[int]) -> int:
        freq = {}
        first = {}
        last = {}

        for i, n in enumerate(nums):
            freq[n] = freq.get(n, 0) + 1
            if n not in first:
                first[n] = i
            last[n] = i

        degree = max(freq.values())

        min_length = len(nums)
        for n in freq:
            if freq[n] == degree:
                min_length = min(min_length, last[n] - first[n] + 1)

        return min_length
            