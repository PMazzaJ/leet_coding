# LeetCode: Find the Index of the First Occurrence in a String - https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/

# Notes: Using Ruby's String#index to find the first occurrence of 'needle' in 'haystack'.
# Returns -1 if not found.

def str_str(haystack, needle)
  haystack.index(needle) || -1
end