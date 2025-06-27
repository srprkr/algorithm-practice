class Solution:
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        if not head or not head.next:
            return False

        fast, slow = head, head

        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if fast is slow:
                    return True 

        return False