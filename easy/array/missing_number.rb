# LeetCode: Missing Number - https://leetcode.com/problems/missing-number/
#
# Notes: The idea is to sort the array, then iterate through it to check if each next value is exactly what we expect (v + 1).
# If we find a place where nums[i + 1] is not equal to v + 1, it means v + 1 is missing and we return that value.
# Before sorting, we check if 0 is missing, since that's a special edge case.
# To avoid going out of bounds with the array index, we check in the last iteration (i + 1 == nums.count), and then return nums.max + 1, which would be the missing number if all others are present.

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  return 0 unless nums.include?(0)
  nums.sort!
  nums.each_with_index do |v, i|
    if i + 1 == nums.count
      return nums.max + 1
    end

    if nums[i + 1] != v + 1
      return v + 1
    end
  end
end