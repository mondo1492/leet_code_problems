def partition(head, x)
    return nil if head.nil?
    greater = []
    less = []
    cur_node = head
    while cur_node
        if cur_node.val < x
            less.push(cur_node)
        else
            greater.push(cur_node)
        end
        cur_node = cur_node.next
    end

    all = less.concat(greater)
    all[0...-1].each_index do |idx|
        all[idx].next = all[idx + 1]
    end
    all[-1].next = nil
    all[0]
end
