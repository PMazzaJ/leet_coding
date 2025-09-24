# LeetCode: Remove Element - https://leetcode.com/problems/remove-element/

# Notes: use reject to remove elements equal to val and return the new length of the array

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  nums.reject! { |value| value == val }
  nums.length
end