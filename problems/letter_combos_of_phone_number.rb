
require 'pry'
# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

# A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

# Example 2:
# Input: digits = ""
# Output: []

# Example 3:
# Input: digits = "2"
# Output: ["a","b","c"]

# @param {String} digits
# @return {String[]}

# Example 1:
# Input:23
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

# def letter_combinations(digits)
#     map = "- - abc def ghi jkl mno pqrs tuv wxyz".split
#     charsets = digits.chars.map { |d| map[d.to_i].chars }
#     digits == "" ? [] : [''].product(*charsets).map(&:join)
# end

# letter_combinations(digits)

# map = ["-", "-", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
# charsets = [["a", "b", "c"], ["d", "e", "f"]]

#the * The last parameter of a method may be preceded by an asterisk(*), which is sometimes called the 'splat' operator. This indicates that more parameters may be passed to the function. Those parameters are collected up and an array is created.
# ** The asterisk operator may also precede an Array argument in a method call. In this case the Array will be expanded and the values passed in as if they were separated by commas.

digits = "23"
# Input:23
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

  def letter_combinations(digits)
    phone_nums = {

        '2' => ["a","b","c"],
        '3' => ["d","e","f"],
        '4' => ["g","h","i"],
        '5' => ["j","k","l"],
        '6' => ["m","n",'o'],
        '7' => ["p","q","r","s"],
        '8' => ["t","u","v"],
        '9' => ["w","x","y","z"]
      }

    if digits.empty?
        return []
    end
    if digits.length == 1
        return phone_nums[digits[0]]
    end

    combos = phone_nums[digits[0]].product(letter_combinations(digits[1..-1]))

    combos.map do |arr|
        arr.join
    end
  end

  puts letter_combinations(digits)

#Others leetcode solution:
# @param {String} digits
# @return {String[]}
# DIGIT_2_LETTERS = {
#     '2' => 'abc'.chars,
#     '3' => 'def'.chars,
#     '4' => 'ghi'.chars,
#     '5' => 'jkl'.chars,
#     '6' => 'mno'.chars,
#     '7' => 'pqrs'.chars,
#     '8' => 'tuv'.chars,
#     '9' => 'wxyz'.chars
#   }
#   def letter_combinations(digits)
#     return [] if digits.empty?
#     return DIGIT_2_LETTERS[digits[0]] if digits.length == 1
#     DIGIT_2_LETTERS[digits[0]].product(letter_combinations(digits[1..-1])).map(&:join)
#   end
