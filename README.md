# Codility assignment

Write a function that merges two strings together. It does so by merging the end of the first string with the start of the second string together when they are an exact match.

"abcde" + "cdefgh" => "abcdefgh"

"abaab" + "aabab" => "abaabab"

"abc" + "def" => "abcdef"

"abc" + "abc" => "abc"

NOTE: The algorithm should always use the longest possible overlap.

"abaabaab" + "aabaabab" would be "abaabaabab" and not "abaabaabaabab"

## Approach

We will be utilising sliding window for this. Sliding window is a common approach in string search and also in more
complex aspects such as data analysis(Multiply-accumulate moving Average filters), and in Digital signal processing
for cross-correlation / auto-correlation measures to find correlations between two signal vectors (arrays).

def merge_strings(str1, str2)
    #initialise overlap tracking variable
    overlap = 0
    #loop from 1..min(str1, str2), inclusive of final value
    (1..[str1.length, str2.length].min).each do |i|
      # Reverse one string and perform mutual sliding window to find overlap
      overlap = i if str1[-i..-1] == str2[0...i]
    end
    #merge results
    str1 + str2[overlap..-1]
  end
  
  #Use binding.pry
  binding.pry