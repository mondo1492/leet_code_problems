def max_profit(prices)
  return 0 if prices.empty?
  current_max_diff = 0
  current_min_num = prices[0]
  prices[1..-1].each do |price|
    if price - current_min_num > current_max_diff && price - current_min_num > 0
      current_max_diff = price - current_min_num
    end
    if price < current_min_num
      current_min_num = price
    end
  end
  current_max_diff
end
prices = [7, 6, 4, 3, 1]
p max_profit(prices)

def max_profit(prices)
  return 0 if prices.length <= 1
  current_low = prices[0]
  current_high = prices[0]
  profit = 0
  prices[1..-1].each do |price|
    if price >= current_high
      current_high = price
    else
      profit += current_high - current_low
      current_low, current_high = price, price
    end
  end
  profit + current_high - current_low
end

#Problem 623 ADD ONE ROW TO TREE
def add_node(current_node, v)
    left = current_node.left if current_node.left
    right = current_node.right if current_node.right
    current_node.left = TreeNode.new(v)
    current_node.right = TreeNode.new(v)
    current_node.left.left = left
    current_node.right.right = right
end

def add_one_row(root, v, d)
    queue = [[root, 1]]

    if d == 1
        new_root = TreeNode.new(v)
        new_root.left = root
        return new_root
    end

    until queue.empty?
        current_node, current_depth = queue.shift

        if current_depth == d - 1
            add_node(current_node, v)
        end

        queue.push([current_node.left, current_depth + 1]) if current_node.left
        queue.push([current_node.right, current_depth + 1]) if current_node.right
    end
    root
end

#PROBLEM 199 BINARY TREE RIGHT SIDE VIEW
def right_side_view(root)
    return [] unless root
    queue = [[root, 0]]
    results_arr = []

    until queue.empty?
        current_node, current_depth = queue.shift
        queue.push([current_node.left, current_depth + 1]) if current_node.left
        queue.push([current_node.right, current_depth + 1]) if current_node.right

        # if queue.empty?
        #     results_arr.push(current_node.val)
        # elsif queue[0][1] != current_depth
        #     results_arr.push(current_node.val)
        # end
        results_arr[current_depth] = current_node.val
    end
    results_arr
end

def letter_combinations(digits)
    arr = []
    nums =
    {
        "2" => ['a', 'b', 'c'],
        "3" => ['d', 'e', 'f'],
        "4" => ['g', 'h', 'i'],
        "5" => ['j', 'k', 'l'],
        "6" => ['m', 'n', 'o'],
        "7" => ['p', 'q', 'r', 's'],
        "8" => ['t', 'u', 'v'],
        "9" => ['w', 'x', 'y', 'z']
        }
    digits.to_s.chars.each do |digit|
        if arr.empty?
            arr = nums[digit]
        else
            new_arr = []
            arr.each do |let|
                nums[digit].each do |let2|
                    new_arr.push(let+let2)
                end
            end
            arr = new_arr
        end
    end
    arr
end
