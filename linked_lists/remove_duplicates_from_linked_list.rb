def delete_duplicates(head)
    current = head
    while current && current.next
        if current.val == current.next.val
            current.next = current.next.next  # Manually adjust the pointers
        else
            current = current.next
        end
    end
    head
end