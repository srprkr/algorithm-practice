from typing import Optional

# Definition for singly-linked list.
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def mergeTwoLists(self, list1: Optional[ListNode], list2: Optional[ListNode]) -> Optional[ListNode]:
        # Create dummy head for easier list construction
        dummy = ListNode(-1)
        current = dummy

        # Iterate through both lists
        while list1 and list2:
            if list1.val <= list2.val:
                current.next = list1
                list1 = list1.next
            else:
                current.next = list2
                list2 = list2.next
            current = current.next

        # Attach remaining nodes from either list
        current.next = list1 or list2

        return dummy.next

# Example usage:
if __name__ == "__main__":
    solution = Solution()

    # Create test lists: [1,2,4] and [1,3,4]
    list1 = ListNode(1, ListNode(2, ListNode(4)))
    list2 = ListNode(1, ListNode(3, ListNode(4)))

    result = solution.mergeTwoLists(list1, list2)

    # Print result: [1,1,2,3,4,4]
    current = result
    while current:
        print(current.val, end=" -> ")
        current = current.next
    print("None")