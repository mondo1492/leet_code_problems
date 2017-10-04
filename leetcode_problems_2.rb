#15
#Given an array S of n integers, are there elements a, b, c in S such
#that a + b + c = 0? Find all unique triplets in the array which gives
#the sum of zero.

#figure this one out later

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


#p three_sum([-1, 0, 1, 2, -1, -4])

#A robot is located at the top-left corner of a m x n grid
#(marked 'Start' in the diagram below).

#The robot can only move either down or right at any point in time.
#The robot is trying to reach the bottom-right corner of the grid
#(marked 'Finish' in the diagram below).

#How many possible unique paths are there?

# def unique_paths(m, n)
#   col = []
#   row = []
#   m.times do |num1|
#
#   end
# end

def go_down(current_pos)
  new_x = current_pos[0]
  new_y = current_pos[1] + 1
  [new_x, new_y]
end

def go_right(current_pos)
  new_x = current_pos[0] + 1
  new_y = current_pos[1]
  [new_x, new_y]
end

def unique_paths(m, n)
  #create matrix
  #add up the up and left cells
  matrix = Array.new(m) { Array.new(n, 1) }

  matrix[0..-2].each_index do |i1|
    matrix[i1][0..-2].each_index do |i2|
      matrix[i1 + 1][i2 + 1] = matrix[i1][i2 + 1] + matrix[i1 + 1][i2]
    end
  end
  matrix[-1][-1]

end

p unique_paths(3, 7)
