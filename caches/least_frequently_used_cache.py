import heapq
import time

class Node:
    def __init__(self, key, value, freq = 1):
        self.key = key
        self.value = value
        self.freq = freq
        self.timestamp = 0
        self.is_valid = True

    def __lt__(self, other):
        if self.freq == other.freq:
            return self.timestamp < other.timestamp
        return self.freq < other.freq

class LFUCache:

    def __init__(self, capacity: int):
        self.capacity = capacity
        self.cache = {}
        self.heap = []
        self.key_node = {}
        self.timestamp = 0

    def get(self, key: int) -> int:
        if key not in self.cache:
            return -1
        node = self.cache[key]
        self._update(node, node.value)
        return node.value


    def put(self, key: int, value: int) -> None:
        if self.capacity == 0:
            return
        
        if key in self.cache:
            node = self.cache[key]
            self._update(node, value)
        else:
            if len(self.cache) >= self.capacity:
                self._evict()
            new_node = Node(key, value)
            self.cache[key] = new_node
            self.key_node[key] = new_node
            heapq.heappush(self.heap, new_node)

    def _update(self, node: Node, value: int):
        node.is_valid = False
        new_node = Node(key=node.key, value=value, freq=node.freq)
        new_node.timestamp = self.timestamp
        self.timestamp += 1

        self.cache[node.key] = new_node
        self.key_node[node.key] = new_node
        heapq.heappush(self.heap, new_node)

    def _evict(self):
        while self.heap:
            node = heapq.heappop(self.heap)
            if node.is_valid and node is self.cache.get(node.key):
                del self.cache[node.key]
                del self.key_node[node.key]
                break