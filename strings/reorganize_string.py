from collections import Counter
from heapq import heapify, heappop
import sys

class Solution:
    def reorganizeString(self, s: str) -> str:
        n = len(s)
        str_count = Counter(s)

        pq = [(-value, key) for key, value in str_count.items()]
        heapify(pq)

        if -pq[0][0] > (n + 1) // 2:
            return ""

        res: list[str] = [None] * n

        pointer = 0

        while len(pq) > 0:
            (count, char) = heappop(pq)
            count = -count
            for _ in range(count):
                res[pointer] = char
                pointer += 2
                if pointer >= n:
                    pointer = 1
        return "".join(res)