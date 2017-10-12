def is_palindrome(head)
    return true if head.nil?
    store = []
    current_node = head
    while current_node
        store.push(current_node.val)
        current_node = current_node.next
    end
    store == store.reverse
end
