# LeetCode: Fizz Buzz - https://leetcode.com/problems/fizz-buzz/
#
# Notes: Classic FizzBuzz problem. Loop from 1 to n, for each number:
# - If divisible by 15, output "FizzBuzz"
# - If divisible by 5, output "Buzz"
# - If divisible by 3, output "Fizz"
# - Otherwise, output the number as a string

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  answer = []
  i = 1
  while i <= n
    if i % 15 == 0
      answer.push("FizzBuzz")
    elsif i % 5 == 0
      answer.push("Buzz")
    elsif i % 3 == 0
      answer.push("Fizz")
    else
      answer.push(i.to_s)
    end
    i += 1
  end
  answer
end