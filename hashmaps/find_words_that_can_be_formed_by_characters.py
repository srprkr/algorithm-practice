class Solution:
    def countCharacters(self, words: List[str], chars: str) -> int:
        char_tally = Counter(chars)
        result = 0

        for word in words:
            word_tally = Counter(word)

            valid = True
            for char, count in word_tally.items():
                if char not in char_tally or char_tally[char] < count:
                    valid = False
                    break

            if valid:
                result += len(word)

        return result