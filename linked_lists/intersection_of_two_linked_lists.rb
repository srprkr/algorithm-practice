def get_intersection_node(headA, headB)
    return nil if headA.nil? || headB.nil?

    a, b = headA, headB

    while a != b
        a = a.next.nil? ? headB : a.next
        b = b.next.nil? ? headA : b.next
    end

    a
end