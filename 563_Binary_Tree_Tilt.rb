def find_tilt(root)
  return 0 if root.nil?
  return (sum_node(root.left) - sum_node(root.right)).abs + find_tilt(root.left) + find_tilt(root.right)
end

def sum_node(node)
  return 0 if node.nil?
  return node.val + sum_node(node.left) + sum_node(node.right)
end
