def merge_k_lists(lists)
  return nil if lists.nil? || lists.empty?

  heap = []

  lists.each_with_index do |node, i|
    if node
      heap << [node.val, i, node]
    end
  end

  heap.sort!

  dummy = ListNode.new(0)
  curr = dummy

  while !heap.empty?
    val, idx, node = heap.shift
    curr.next = node
    curr = curr.next

    if node.next

      new_entry = [node.next.val, idx, node.next]
      insert_idx = heap.bsearch_index { |x| x[0] >= node.next.val } || heap.length
      heap.insert(insert_idx, new_entry)
    end
  end

  dummy.next
end