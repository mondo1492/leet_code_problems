def majority_element(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
        return num if hash[num] > nums.length / 2
    end
end
