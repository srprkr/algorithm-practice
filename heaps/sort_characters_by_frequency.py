import heapq

class Solution:
    def frequencySort(self, s: str) -> str:
        freq_count = {}
        for char in s:
            freq_count[char] = freq_count.get(char, 0) + 1

        heap = [(-count, char) for char, count in freq_count.items()]
        heapq.heapify(heap)

        result = []
        while heap:
            count, char = heapq.heappop(heap)
            result.append(char * -count)


        return ''.join(result)