class Solution:
    def canJump(self, arr: List[int], d_min: int, d_max: int) -> bool:
        """
        Determine if we can reach the end by jumping over 1s in range [d_min, d_max].
        
        Approach: Greedy - track the furthest position reachable with each jump
        """
        n = len(arr)
        if n <= 1:
            return True
        
        farthest = 0  # Furthest index we can reach
        
        for i in range(n):
            # If current position is unreachable, return False
            if i > farthest:
                return False
            
            # If current position is a 1, try to jump
            if arr[i] == 1:
                # We can jump d_min to d_max positions forward
                farthest = max(farthest, i + d_max)
                
                # If we can reach the end, return True
                if farthest >= n - 1:
                    return True
        
        return farthest >= n - 1