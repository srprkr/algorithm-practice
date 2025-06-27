class Solution:
    def minEatingSpeed(self, piles: List[int], h: int) -> int:
        left = 1
        right = max(piles)

        def valid_speed(piles, spd):
            return sum( math.ceil(num / spd) for num in piles )

        while left < right:
            mid = (left + right) // 2
            if valid_speed(piles, mid) > h:
                left = mid + 1
            else:
                right = mid
    
        return left