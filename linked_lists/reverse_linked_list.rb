def reverse_list(head)
    prev = nil

    while head
        temp = head.next
        head.next = prev
        prev = head
        head = temp
    end

    return prev
end