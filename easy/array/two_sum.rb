# LeetCode: Two Sum - https://leetcode.com/problems/two-sum/
#
# Notes:
# 1. We use a hashmap to avoid high time complexity (such as using a nested for loop).
# 2. As we iterate through the nums array, we "look back" for the value that sums to the target by storing already seen values in the hashmap.
# 3. When we notice that the value which completes the sum is already in the hashmap, we return both indices for the solution.


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