# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    temp1 = l1
    temp2 = l2
    carry_over = 0
    
    while temp1
        sum = temp1&.val.to_i + temp2&.val.to_i + carry_over
        carry_over = sum / 10
        sum = sum % 10
        temp1.val = sum
        
        if temp1&.next.nil? && temp2&.next
            temp1.next = temp2.next
            temp2.next = nil
        end
        if temp1&.next.nil? && temp2&.next.nil? && carry_over != 0
            temp1.next = ListNode.new(carry_over)
            return l1
        end

        temp1 = temp1&.next
        temp2 = temp2&.next
    end

    l1
end