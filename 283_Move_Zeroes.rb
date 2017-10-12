def check_idx(cur_idx, nums)
    check_idx = 1
    while cur_idx + check_idx < nums.length
        return cur_idx + check_idx if nums[cur_idx + check_idx] != 0
        check_idx += 1
    end
    false
end

def move_zeroes(nums)
    cur_idx = 0
    while cur_idx < nums.length
        if nums[cur_idx] == 0
            if check_idx(cur_idx, nums)
                switch_idx = check_idx(cur_idx, nums)
                nums[cur_idx], nums[switch_idx] = nums[switch_idx], nums[cur_idx]
            else
                return nums
            end
        end
        cur_idx += 1
    end
end
