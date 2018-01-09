def single_number(nums)
    nums.sort!
    idx = 0
    ans = []
    while idx < nums.length
        if nums[idx] == nums[idx + 1]
            idx += 2
        else
            ans.push(nums[idx])
            idx += 1
        end
    end
    ans
end
