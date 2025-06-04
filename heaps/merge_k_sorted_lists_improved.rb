def merge_k_lists(lists)
    return nil if lists.nil? || lists.empty?

    values = []

    lists.each do |node|
        while node
        values << node.val
        node = node.next
        end
    end

    return nil if values.empty?

    values.sort!

    dummy = ListNode.new(0)
    curr = dummy
    values.each do |val|
        curr.next = ListNode.new(val)
        curr = curr.next
    end

    dummy.next
end