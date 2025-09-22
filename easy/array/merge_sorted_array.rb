# LeetCode: Merge Sorted Array - https://leetcode.com/problems/merge-sorted-array/
#
# Notes: The strategy is to overwrite the extra zeroes at the end of nums1 with the elements of nums2,
# then sort nums1 in-place. We first remove the last n elements (which are placeholders),
# add each element from nums2, and finally sort nums1 so it forms a valid sorted array.

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  # Remove the n placeholder elements at the end of nums1
  nums1.pop(n)

  # Insert elements from nums2 into nums1
  nums2.each do |v|
    nums1.push(v)
  end

  # Sort nums1 in-place
  nums1.sort!
end