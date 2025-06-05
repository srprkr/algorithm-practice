import random

class RandomizedSet:
    def __init__(self):
        self.list = []
        self.idx_map = {}

    def search(self, val):
        return val in self.idx_map

    def insert(self, val):
        if self.search(val):
            return False

        self.list.append(val)
        self.idx_map[val] = len(self.list) - 1
        return True

    def remove(self, val):
        if not self.search(val):
            return False

        idx = self.idx_map[val]
        self.list[idx] = self.list[-1]
        self.idx_map[self.list[-1]] = idx
        self.list.pop()
        del self.idx_map[val]
        return True

    def getRandom(self):
        return random.choice(self.list)