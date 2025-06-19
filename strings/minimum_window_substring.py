def min_window(s: str, t: str) -> str:
    from collections import Counter, defaultdict

    need = Counter(t)
    window = defaultdict(int)
    left = 0
    right = 0
    valid = 0
    min_len = float('inf')
    start = 0

    while right < len(s):
        c = s[right]
        right += 1
        if c in need:
            window[c] += 1
            if window[c] == need[c]:
                valid += 1

        while valid == len(need):
            if right - left < min_len:
                min_len = right - left
                start = left
            d = s[left]
            left += 1
            if d in need:
                if window[d] == need[d]:
                    valid -= 1
                window[d] -= 1

    return "" if min_len == float('inf') else s[start:start + min_len]