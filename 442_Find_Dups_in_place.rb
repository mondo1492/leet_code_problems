def find_duplicates(nums)
    result = []
    nums.each do |num|
        if nums[num.abs - 1] < 0
            result.push(num.abs)
        else
            nums[num.abs - 1] *= -1
        end
    end
    result
end
