class Solution:
    def arrangeCoins(self, n: int) -> int:
    
    
        array = []
        count = 0
        sum = 0

        while sum <= n:
            count += 1
            array.append(count)
            sum += count

        return len(array) - 1