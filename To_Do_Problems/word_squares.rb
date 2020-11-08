# Given a set of words (without duplicates), find all word squares you can build from them.

# A sequence of words forms a valid word square if the kth row and column read the exact same string, where 0 ≤ k < max(numRows, numColumns).

# For example, the word sequence ["ball","area","lead","lady"] forms a word square because each word reads the same both horizontally and vertically.

# b a l l
# a r e a
# l e a d
# l a d y
# Note:
# There are at least 1 and at most 1000 words.
# All words will have the exact same length.
# Word length is at least 1 and at most 5.
# Each word contains only lowercase English alphabet a-z.
# Example 1:

# Output:
# [
#   [ "wall",
#     "area",
#     "lead",
#     "lady"
#   ],
#   [ "ball",
#     "area",
#     "lead",
#     "lady"
#   ]
# ]

# if a word's second letter is the first of another word and the third letter is first letter in another word, put in that order
# if word[i][0] == word[i + 1][1]


# Explanation:
# The output consists of two word squares. The order of output does not matter (just the order of words in eac


# @param {String[]} words
# @return {String[][]}

# Input:
#["area","lead","wall","lady","ball"]
#Output:
#["wall", "area","lead", lady"]

# def word_squares(words)

# end

def basecase(words)
    for i in words
        if words[i][1] == word
    end
end

# one word equals the first letters of rest of the word in box
# second letter in first word
