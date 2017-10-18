def merge_k_lists(lists)
    return [] if lists.empty?
    return [] if lists.compact == []

    hash = Hash.new { |h,k| h[k] = []}

    lists.each do |list_node|
      current_node = list_node
      while current_node
        hash[current_node.val].push(current_node)
        current_node = current_node.next
      end
    end
    sorted_keys = hash.keys.sort
    root = hash[sorted_keys[0]].pop
    arr = [root]
    current_node = root
    sorted_keys.each do |key|
        unless hash[key].empty?
          hash[key].each do |node|
            current_node.next = node
            current_node = current_node.next

          end
        end
    end

    root
end
