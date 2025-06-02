def delete_duplicates(head)
    return head if head.nil? || head.next.nil?

    stack = []
    repeats = []
    current = head

    while current

      count = stack.count(current.val)
        if count == 0
            stack << current.val
        else
            repeats << current.val
        end

      current = current.next
    end

    return nil if stack.empty?

    stack - repeats
  end