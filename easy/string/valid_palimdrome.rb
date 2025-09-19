# LeetCode: Valid Palindrome - https://leetcode.com/problems/valid-palindrome/description/

# Notes: first thing that I thought of, there's probably a better way to do this.
# using regex to remove non-alphanumeric characters, downcase to ignore cases, and compare the cleaned string with its reverse.

def is_palindrome(s)
  return true if s.empty?

  normalized_str = s.gsub(/[^0-9a-zA-Z]/, '').downcase
  normalized_str == normalized_str.reverse
end


