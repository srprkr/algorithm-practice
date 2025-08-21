from heapq import heapify, heappush, heappop
from typing import List

class Solution:
    def findRelativeRanks(self, score: List[int]) -> List[str]:
        if not score:
            return []

        # Create ranks array with medals and numerical ranks
        ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"] + [str(i) for i in range(4, len(score) + 1)]

        # Create max-heap using negated values (since heapq is min-heap)
        max_heap = []
        for num in score:
            heappush(max_heap, -num)

        # Extract scores in descending order and assign ranks
        rank_map = {}
        for i in range(len(score)):
            top_score = -heappop(max_heap)
            rank_map[top_score] = ranks[i]

        # Build result in original order
        result = [rank_map[num] for num in score]
        return result