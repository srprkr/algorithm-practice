# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
    return head if head.nil? || head.next.nil?
    a, b = split(head)
    a = sort_list(a)
    b = sort_list(b)
    merge(a, b)
end
def merge(a, b)
    head =  prev = ListNode.new(0)
    while(a && b)
        if a.val < b.val
            prev.next = a
            a = a.next
        else
            prev.next = b
            b = b.next
        end
        prev = prev.next
    end
    prev.next = a if a
    prev.next = b if b
    head.next
end