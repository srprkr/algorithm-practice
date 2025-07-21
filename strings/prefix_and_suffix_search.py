class WordFilter:
    from collections import defaultdict
    def __init__(self, words: List[str]):
        self.dct = {}
        for i in range(len(words)):
            for j in range(len(words[i])):
                for k in range(len(words[i])-1, -1, -1):
                    self.dct[(words[i][:j + 1], words[i][k:])] = i

    def f(self, prefix: str, suffix: str) -> int:
        return self.dct.get((prefix, suffix), -1)


# Your WordFilter object will be instantiated and called as such:
# param_1 = obj.f(pref,suff)
# obj = WordFilter(words)