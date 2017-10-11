def reverse_list(head)
    current_node = head
    prev_node = nil
    next_node = nil

    while current_node
        next_node = current_node.next
        current_node.next = prev_node
        prev_node = current_node
        current_node = next_node
    end

    prev_node
end
