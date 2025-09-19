# LeetCode: Plus One - https://leetcode.com/problems/plus-one/
#
# Notes:
# 1. converted the digits array to an integer.
# 2. added 1 to get the result.
# 3. converted the result back to the original format using chars.map(&:to_i).

def plus_one(digits)
  digits_converted = digits.join.to_i
  new_digits_converted = digits_converted + 1
  new_digits_converted.to_s.chars.map{|value| value.to_i}
end