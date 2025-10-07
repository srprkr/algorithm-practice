class Solution:
    def reversePrefix(self, word: str, ch: str) -> str:
        if ch not in word:
            return word
            
        # Find index of character
        ch_ind = word.index(ch)
        
        # Reverse prefix and add remaining string
        return word[:ch_ind + 1][::-1] + word[ch_ind + 1:]