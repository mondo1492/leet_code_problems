def permute(nums)
    return [nums] if nums.length <= 1
    current_num = nums.shift
    perms = permute(nums)
    total_perms = []
    perms.each do |perm|
        (0..perm.length).each do |i|
            total_perms.push(perm[0...i] + [current_num] + perm[i..-1])
        end
    end
   total_perms
end
