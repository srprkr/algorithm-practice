def delete_middle(head)
    return nil if head.nil? || head.next.nil?
    dummy = ListNode.new(0)
    dummy.next = head
    slow = head
    fast = head
    prev = dummy

#   while fast && fast.next
#     slow = slow.next
#     fast = fast.next.next
#   end

    while fast && fast.next
      prev = slow  
      slow = slow.next
      fast = fast.next.next
    end

    prev.next = slow.next
    dummy.next
end