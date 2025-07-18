class Solution:
    def findCheapestPrice(self, n: int, flights: List[List[int]], src: int, dst: int, k: int) -> int:
        prev_cost = [float('inf')] * n
        prev_cost[src] = 0

        curr_cost = prev_cost.copy()

        for i in range(k + 1):
            for src1, src2, cost in flights:
                if prev_cost[src1] != float('inf'):
                    curr_cost[src2] = min(prev_cost[src1] + cost, curr_cost[src2])

            prev_cost = curr_cost.copy()

        return prev_cost[dst] if prev_cost[dst] != float('inf') else -1