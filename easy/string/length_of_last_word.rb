# LeetCode: Length of Last Word
#
# Notes:
# 1. converted the string to an array using split.
# 2. took the last position with pop.
# 3. converted the result to a string.
# 4. removed any empty spaces using strip.
# 5. got the size (length) of the last word.

def length_of_last_word(s)
  s.split.pop.to_s.strip.length
end