class Solution:
    def soupServings(self, n: int) -> float:
        def __init__(self):
        self.memo = [[None] * 200 for _ in range(200)]
        
    def soupServings(self, n: int) -> float:
        if n >= 5000:
            return 1.0
        n = (n + 24) // 25  # Equivalent to ceil(n/25)
        return self.prob(n, n)
        
    def prob(self, a: int, b: int) -> float:
        # Base cases
        if a <= 0:
            return 0.5 if b <= 0 else 1.0
        if b <= 0:
            return 0.0
            
        # Check memoization
        if self.memo[a-1][b-1] is not None:
            return self.memo[a-1][b-1]
            
        # Calculate all four options
        options = [
            self.prob(a - 4, b),      # 100ml from A
            self.prob(a - 3, b - 1),  # 75ml from A, 25ml from B
            self.prob(a - 2, b - 2),  # 50ml from both
            self.prob(a - 1, b - 3)   # 25ml from A, 75ml from B
        ]
        
        # Store and return result
        self.memo[a-1][b-1] = sum(options) / 4.0
        return self.memo[a-1][b-1]