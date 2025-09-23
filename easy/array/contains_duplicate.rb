# LeetCode: Contains Duplicate - https://leetcode.com/problems/contains-duplicate/
#
# Notes: The idea is to store the values as keys in the hash_map.
# As soon as you find a value that is already present, you can return true because it satisfies the requirement of the problem.
# If you iterate through the whole array without finding duplicates, return false.

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash_map = {}

  nums.each_with_index do |number, index|
    return true if hash_map.has_key?(number)
    hash_map[number] = index
  end

  false
end