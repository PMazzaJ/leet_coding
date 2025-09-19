# https://leetcode.com/problems/two-sum/

def two_sum(nums, target)
  seem = {}

  nums.each_with_index do |v, i|
    missing_number = target - v

    if seem.has_key?(missing_number)
      return [seem[missing_number], i]
    end

    seem[v] = i
  end
end