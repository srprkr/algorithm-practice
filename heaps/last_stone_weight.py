from heapq import heapify, heappush, heappop

class Solution:
    def lastStoneWeight(self, stones: List[int]) -> int:
        heap = [-x for x in stones]
        heapify(heap)

        while len(heap) > 1:
            first = -heappop(heap)
            second = -heappop(heap)
            diff = first - second
            if diff > 0:
                heappush(heap, -diff)

        return -heap[0] if heap else 0