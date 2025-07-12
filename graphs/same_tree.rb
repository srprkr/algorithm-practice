def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return (is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)) if p&.val == q&.val
    false

end