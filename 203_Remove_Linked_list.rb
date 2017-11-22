def remove_elements(head, val)
    current_head = head
    prev_node = nil
    c_node = head
    while c_node
        skip = false
        if c_node == current_head && c_node.val == val
            current_head = c_node.next
        elsif c_node.val == val
            skip = true
            prev_node.next = c_node.next
        end
        prev_node = c_node if !skip
        c_node = c_node.next
    end
    current_head
end
