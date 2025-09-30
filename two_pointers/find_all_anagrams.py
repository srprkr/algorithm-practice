# From https://algo.monster/problems/find_all_anagrams

def find_all_anagrams(original: str, check: str) -> list[int]:
    left = 0
    right = len(check) - 1
    match_indexes = []

    while right <= len(original) - 1:
        if sorted(original[left:right + 1]) == sorted(check):
            match_indexes.append(left)
        left += 1
        right += 1
        
    return match_indexes