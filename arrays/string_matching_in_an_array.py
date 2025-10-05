class Solution:
    def stringMatching(self, words: List[str]) -> List[str]:
        results = []
    
        for search_word in words:
            for match_word in words:
                if search_word == match_word:
                    continue
                if match_word in search_word:
                    results.append(match_word)
        
        return list(set(results))