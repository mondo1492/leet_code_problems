def has_path_sum(root, sum)
  return false if root.nil?
      queue = [[root, 0]]
    until queue.empty?
      current_node, acc_sum = queue.pop
      acc_sum += current_node.val

      if current_node.left.nil? && current_node.right.nil?
        return true if acc_sum == sum
      end

      queue.push([current_node.left, acc_sum]) if current_node.left
      queue.push([current_node.right, acc_sum]) if current_node.right
    end
    false
end
