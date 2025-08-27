class Solution:
    def findClosestElements(self, arr: List[int], k: int, x: int) -> List[int]:
        h = []
        res = []
        for i in arr:
            heappush(h, [abs(i - x), i])
        for _ in range(k):
            res.append(heappop(h)[1])
        return sorted(res)