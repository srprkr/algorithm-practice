def remove_nth_from_end(head, n)
    pre = ListNode.new
    pre.next, fast, slow = head, pre, pre
    n.times.each { fast = fast.next }

    slow, fast = slow.next, fast.next until fast.next.nil?
    slow.next = slow.next.next
    pre.next
end