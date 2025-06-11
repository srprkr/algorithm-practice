class Solution:
    def rotateRight(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        if not head or k == 0:
            return head

        length = 1
        tail = head
        # progress tail to point at end of list
        while tail.next:
            tail = tail.next
            length += 1
        
        # edge case where k is last element in list
        k = k % length
        if k == 0:
            return head
        
        # make it circular
        tail.next = head
        steps_to_new_head = length - k
        new_tail = tail
        while steps_to_new_head:
            new_tail = new_tail.next
            steps_to_new_head -= 1

        # Cut the link that connects the cycle at the new end you want
        new_head = new_tail.next

        # Make the end point to null
        new_tail.next = None
        return new_head