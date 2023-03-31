# Codility assignment

Write a function that merges two strings together. It does so by merging the end of the first string with the start of the second string together when they are an exact match.

"abcde" + "cdefgh" => "abcdefgh"

"abaab" + "aabab" => "abaabab"

"abc" + "def" => "abcdef"

"abc" + "abc" => "abc"

NOTE: The algorithm should always use the longest possible overlap.

"abaabaab" + "aabaabab" would be "abaabaabab" and not "abaabaabaabab"

We will be utilising sliding window for this. Sliding window is a common approach in string search and also in more
complex aspects such as data analysis(Multiply-accumulate moving Average filters), and in Digital signal processing
for cross-correlation / auto-correlation measures to find correlations between two signal vectors (arrays).

## Steps

In the project directory, you can run:

```bundle install```

Drop into a REPL

```irb make_strings.rb```

Try the merge strings function

```[1] pry(main)> 'merge_strings("abaabaab", "aabaabab") ```