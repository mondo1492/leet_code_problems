def rob(nums)
    return 0 if nums.empty?
    return nums[0] if nums.length == 1
    prev, now = 0, 0
    prev1, now1 = 0, 0
    idx, idx1 = 0, 0
    nums1 = nums[1..-1]
    nums2 = nums[0..-2]
    while idx < nums1.length
        prev, now = now, [prev + nums1[idx], now].max
        idx += 1
    end

    while idx1 < nums2.length
        prev1, now1 = now1, [prev1 + nums2[idx1], now1].max
        idx1 += 1
    end
    [now, now1].max
end
