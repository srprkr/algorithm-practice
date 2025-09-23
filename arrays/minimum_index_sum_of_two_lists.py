class Solution:
    def findRestaurant(self, list1: List[str], list2: List[str]) -> List[str]:
        from collections import defaultdict
        count_dict = defaultdict(int)

        for str in list1:
            if str in list2:
                count_dict[str] = list1.index(str) + list2.index(str)

        min_sum = min(count_dict.values()) if count_dict else 0

        return [k for k, v in count_dict.items() if v == min_sum]