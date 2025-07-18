import heapq

class Solution:
    def networkDelayTime(self, times: List[List[int]], n: int, k: int) -> int:
        graph = defaultdict(list)
        for u, v, time in times:
            graph[u].append((v, time))

        min_times = {}
        min_heap = [(0, k)]

        while min_heap:
            time_k_to_i, i = heapq.heappop(min_heap)
            if i in min_times:
                continue

            min_times[i] = time_k_to_i
            for neibr, neibr_time in graph[i]:
                if neibr not in min_times:
                    heapq.heappush(min_heap, (time_k_to_i + neibr_time, neibr))

        if len(min_times) == n:
            return max(min_times.values())
        else:
            return -1    