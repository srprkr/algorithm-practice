class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, next_node = nil)
        @val = val
        @next = next_node
    end
end

def insertion_sort_list(head)
  return head if head.nil? || head.next.nil?

  dummy = ListNode.new(0)
  curr = head

  while curr
    next_node = curr.next
    
    prev = dummy
    while prev.next && prev.next.val < curr.val
      prev = prev.next
    end

    curr.next = prev.next
    prev.next = curr

    curr = next_node
  end
  
  dummy.next
end



# def create_linked_list(arr)
#     return nil if arr.empty?
    
#     head = ListNode.new(arr[0])
#     current = head
    
#     (1...arr.size).each do |i|
#         current.next = ListNode.new(arr[i])
#         current = current.next
#     end
    
#     head
# end



# insertion_sort_list(create_linked_list([4,2,1,3]))

