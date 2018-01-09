def rotate_right(head, k)
    return nil if head.nil?
    pointer_1 = head
    pointer_2 = head
    get_count = head
    count = 0
    while get_count
        get_count = get_count.next
        count += 1
    end
    k = (k % count)
    (k).times do
        if pointer_2.next
            pointer_2 = pointer_2.next
        else
            pointer_2 = head
        end
    end
        while pointer_2.next
            pointer_1 = pointer_1.next
            pointer_2 = pointer_2.next
        end
    pointer_2.next = head
    new_head = pointer_1.next
    pointer_1.next = nil
    new_head
end
