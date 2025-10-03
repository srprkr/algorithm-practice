from collections import defaultdict

class Solution:
    def minimumCardPickup(self, cards: List[int]) -> int:
        window = defaultdict(int)
        shortest = len(cards) + 1
        left = 0

        for right, card in enumerate(cards):
            window[card] += 1
            while window[card] == 2:
                shortest = min(shortest, right - left + 1)
                window[cards[left]] -= 1
                left += 1

        return -1 if shortest == len(cards) + 1 else shortest
