# @param {Integer[]} nums
# @return {String}

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, next_node = nil)
    @val = val
    @next = next_node
  end
end

def create_linked_list(arr)
    return nil if arr.empty?

    head = ListNode.new(arr[0])
    current = head

    arr[1..-1].each do |val|
        current.next = ListNode.new(val)
        current = current.next
    end

    head
end

def largest_number(nums)
    create_linked_list(nums)
end