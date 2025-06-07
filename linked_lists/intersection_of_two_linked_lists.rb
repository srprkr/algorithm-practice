def get_intersection_node(headA, headB)
    return nil if headA.nil? || headB.nil?

    a, b = headA, headB
    switched_a = switched_b = false

    while a != b
        if a.next.nil?
            return nil if switched_a
            a = headB
            switched_a = true
        else
            a = a.next
        end

        if b.next.nil?
            return nil if switched_b  
            b = headA
            switched_b = true
        else
            b = b.next
        end
    end

    a
end