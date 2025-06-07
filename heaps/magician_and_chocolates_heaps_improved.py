from heapq import heapify, heappush, heappop

def max_chocolates(a: int, b: list[int]) -> int:
    # Convert to max heap by negating values (Python heapq is min heap)
    heap = [-x for x in b]
    heapify(heap)
    
    max_choc = 0
    mod = (10**9) + 7
    
    while a > 0 and heap:
        # Get maximum chocolates (negate to get real value)
        curr_max = -heappop(heap)
        max_choc += curr_max
        
        # Add back half if greater than 0
        if curr_max // 2:
            heappush(heap, -(curr_max // 2))
            
        a -= 1
        
    return max_choc % mod