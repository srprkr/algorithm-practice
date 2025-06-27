def hasCycle(head)
  return false if head.nil? || head.next.nil?

  fast, slow = head, head


	while !fast.nil? && !fast.next.nil?
        return true if fast == slow
        slow = slow.next
        fast = fast.next.next 
	end

	false
end