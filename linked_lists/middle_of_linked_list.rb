# Definition for singly-linked list:
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, nxt = nil)
#     @val = val
#     @next = nxt
#   end
# end

def middle_node(head)
  return nil if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  slow
end