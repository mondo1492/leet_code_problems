def contains_duplicate(nums)
    return false if nums.length <= 1
    nums.sort!
    last_visited = nums[0]
    nums[1..-1].each do |num|
        return true if num == last_visited
        last_visited = num
    end
    false
end
