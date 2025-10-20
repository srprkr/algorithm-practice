class Solution:
    def countServers(self, n: int, logs: List[List[int]], x: int, queries: List[int]) -> List[int]:
        logs.sort(key=lambda l:l[1])
        
        queries = [(q, idx) for idx, q in enumerate(queries)]
        queries.sort()

        
        left, right = 0, 0
        m = len(logs)
        servers_in_window_counts = defaultdict(int)
        ans = [0] * (len(queries))
        for end, idx in queries:
            start = end - x

            while right < m and logs[right][1] <= end:
                servers_in_window_counts[logs[right][0]] += 1
                right += 1

            while left < right and logs[left][1] < start: 
                servers_in_window_counts[logs[left][0]] -= 1
                if servers_in_window_counts[logs[left][0]] == 0:
                    del servers_in_window_counts[logs[left][0]]
                left += 1

            ans[idx] = n - len(servers_in_window_counts)

        return ans