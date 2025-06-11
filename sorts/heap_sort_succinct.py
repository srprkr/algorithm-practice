import heapq
# heap sort

class Solution:
    def sortArray(self, nums: List[int]) -> List[int]:
        heap = []
        for num in nums:
            heapq.heappush(heap, num)
        return [heapq.heappop(heap) for _ in range(len(heap))]