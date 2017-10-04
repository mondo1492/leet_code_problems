#Given an array S of n integers, are there elements a, b, c in S such
#that a + b + c = 0? Find all unique triplets in the array which gives
#the sum of zero.

def three_sum(nums)
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1
  end
  arr = hash.keys
  arr.sort!
  arr2 = []
  arr[0..-2].each_with_index do |num1, idx|
    arr[idx + 1..-1].each do |num2|
      num_check = num1 + num2
      if (0 - num_check) == num1
        if hash[num_check] > 1
          arr2.push([num1, num2, (0 - num_check)].sort)
        end
      elsif (0 - num_check) == num2
        if hash[num_check] > 1
          arr2.push([num1, num2, (0 - num_check)].sort)
        end
      elsif hash[(0 - num_check)] >= 1
        arr2.push([num1, num2, (0 - num_check)].sort)
      end
    end
  end
  arr2
end

  # arr = []
  # nums[0..-3].each_with_index do |num, idx|
  #     nums[idx+1..-2].each_with_index do |num2, idx2|
  #         nums[idx+idx2+2..-1].each do |num3|
  #             arr.push([num,num2,num3].sort) if (num + num2 + num3 == 0) && !arr.include([num,num2,num3].sort)
  #         end
  #     end
  # end
  # arr


p three_sum([-1, 0, 1, 2, -1, -4])
