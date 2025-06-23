# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    return nil if head.nil?

    slow = head
    fast = head

    while fast && fast.next
      slow = slow.next
      fast = fast.next.next
      break if slow == fast
    end

    return nil if fast.nil? || fast.next.nil?

    slow = head
    while slow != fast
      slow = slow.next
      fast = fast.next
    end

slow
end