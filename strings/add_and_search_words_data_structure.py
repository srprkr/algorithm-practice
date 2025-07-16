class TrieNode:
    def __init__(self, val):
        self.val = val
        self.children = {}
        self.isEnd = False

class WordDictionary:

    def __init__(self):
        self.root = TrieNode("")

    def addWord(self, word: str) -> None:
        root = self.root
        for i in range(len(word)):
            if word[i] not in root.children:
                root.children[word[i]] = TrieNode(word[i])    
            if i == len(word) - 1:
                root.children[word[i]].isEnd = True
            root = root.children[word[i]]
        root.isEnd = True
                

    def search(self, word: str) -> bool:
        def dfs(node, i):
            if i == len(word):
                return node.isEnd

            if word[i] == '.':
                for child in node.children.values():
                    if dfs(child, i + 1):
                        return True
                return False

            if word[i] not in node.children:
                return False

            return dfs(node.children[word[i]], i + 1)

        return dfs(self.root, 0)

# Your WordDictionary object will be instantiated and called as such:
# obj = WordDictionary()
# obj.addWord(word)
# param_2 = obj.search(word)