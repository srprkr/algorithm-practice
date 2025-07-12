from collections import deque

class Solution:
    def ladderLength(self, beginWord: str, endWord: str, wordList: List[str]) -> int:
        st = set(wordList)
        queue = deque([(beginWord, 1)])
        
        while queue:
            word, length = queue.popleft()
            if word == endWord:
                return length

            for i in range(len(word)):
                temp = list(word)
                for ch in "abcdefghijklmnopqrstuvwxyz":
                    temp[i] = ch
                    new_word = "".join(temp)
                    if new_word in st:
                        queue.append((new_word, length + 1))
                        st.remove(new_word)

        return 0