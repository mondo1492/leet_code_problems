def max_sub_array(nums)
    max_so_far = nums[0]
    cur_max = nums[0]

    nums[1..-1].each do |num|
        cur_max = [num, cur_max + num].max
        max_so_far = [max_so_far,cur_max].max
    end
    max_so_far
end
