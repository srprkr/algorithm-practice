class Solution:
    def distributeCandies(self, candyType: List[int]) -> int:
        max_allotted = len(candyType) // 2
        uniq_size = len(set(candyType))
        return min(uniq_size, max_allotted)