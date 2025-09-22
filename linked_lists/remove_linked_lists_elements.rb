# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    current = head

    while current && current.next
        if current.next.val == val
            current.next = current.next.next
        else
            current = current.next
        end
    end
    head
end