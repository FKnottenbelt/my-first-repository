# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

# i: string
# o: string
# f find the longest substring that is a palindrome
# je wilt longest dus start achteraan
# dit is wel een gevalletje van outer loop voor start
# en inner loop voor eind

# abcbd
# abcb
# abc
# ab

# bcbd
# bcb
# bc

# cbd
# bc

# bd
# c

#NB aflopende range begrijpt range niet : vervang door downto
def longest_palindrome(string)
  max = ''
  (0...string.size).each do |start|
    ((string.size - 1).downto(0)).each do |eind|
      substring = string[start..eind]
      if substring == substring.reverse
        if substring.size > max.size
          max = substring
        end
      end
    end
  end
  max
end

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
