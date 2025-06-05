class Node:
    def __init__(self, key, val, freq=1):
        self.key = key
        self.value = val
        self.cnt = 1
        self.prev = None
        self.next = None

class LFUCache:
    def __init__(self, capacity: int):
        self.cacheMap = {} 
        self.freqMap = {}
        self.minFreq = 0
        self.capacity = capacity
        
    def get(self, key: int) -> int:
        if key not in self.cacheMap:
            return -1
            
        node = self.cacheMap[key]
        res = node.value
        self.updateFreq(node)
        return res
        
    def put(self, key: int, value: int) -> None:
        if self.capacity == 0:
            return
            
        if key in self.cacheMap:
            node = self.cacheMap[key]
            node.value = value
            self.updateFreq(node)
            return

        else:
        
            if len(self.cacheMap) == self.capacity:

                node = self.freqMap[self.minFreq][1].prev
                del self.cacheMap[node.key]
                self.remove(node)
                
                if self.freqMap[self.minFreq][0].next == self.freqMap[self.minFreq][1]:

                    del self.freqMap[self.minFreq]

            node = Node(key, value)
            self.cacheMap[key] = node

            self.minFreq = 1
            self.add(node, 1)

    def add(self, node, freq):

        if freq not in self.freqMap:

            head = Node(-1, -1)
            
            tail = Node(-1, -1)
            head.next = tail
            tail.prev = head
            self.freqMap[freq] = (head, tail)

        head = self.freqMap[freq][0]
        temp = head.next
        node.next = temp
        node.prev = head
        head.next = node
        temp.prev = node

    def remove(self, node):
        delprev = node.prev
        delnext = node.next
        delprev.next = delnext
        delnext.prev = delprev

    def updateFreq(self, node):
        oldFreq = node.cnt

        node.cnt += 1

        self.remove(node)
        
        if self.freqMap[oldFreq][0].next == self.freqMap[oldFreq][1]:
            del self.freqMap[oldFreq]

            if self.minFreq == oldFreq:
                self.minFreq += 1

        self.add(node, node.cnt)




    def update(self, node):
        # Remove from old frequency list
        freq = node.freq
        self.freqMap[freq].remove(node)
        
        # Update minFreq if needed
        if self.minFreq == freq and self.freqMap[freq].size == 0:
            self.minFreq += 1
            
        # Add to new frequency list
        node.freq += 1
        if node.freq not in self.freqMap:
            self.freqMap[node.freq] = DLList()
        self.freqMap[node.freq].add(node)