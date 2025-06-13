class Solution:
    def relativeSortArray(self, arr1: List[int], arr2: List[int]) -> List[int]:
      if not arr1:
        return arr1

      freq = {}
      for num in arr1:
        freq[num] = freq.get(num, 0) + 1

      result = []

      for num in arr2:
        while freq.get(num, 0) > 0:
          result.append(num)
          freq[num] -= 1
        
        if num in freq:
            del freq[num]

      
      for num in sorted(freq.keys()):
        result.extend([num] * freq[num])

      return result