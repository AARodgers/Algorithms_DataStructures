# PROBLEM: Given a 32-bit signed integer, reverse digits of an integer. Note:
# Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
#INPUT: 32-bit signed integer
# OUTPUT: reversed integer or 0 when reversed integer overflows
# Input: x = 123
# Output: 321
# Resources: https://dev.to/rygelxvi/reverse-an-integer-code-challenge-5g66

# @param {Integer} x
# @return {Integer}


def reverse(x)
 neg = x < 0
 x = x.to_s.reverse.to_i
 return 0 if (x > 2147483646 || x < -2147483646)
 return neg ? -x : x
end

reverse(23)
