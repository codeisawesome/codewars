# Write a function partlist that gives all the ways to divide a list (an array) of at least two elements into two non-empty parts.
#
# Each two non empty parts will be in a pair (or an array for languages without tuples)
# Each part will be in a string
# Elements of a pair must be in the same order as in the original array.
# Example:
#
# a = ["az", "toto", "picaro", "zone", "kiwi"] -->

def partlist(arr)
  len = arr.length
  i = 0
  masterArr = []
  while i < len - 1 do
    masterArr << [arr[0..i].join(" ")] + [arr[i+1..len].join(" ")]
    i += 1
  end
  masterArr
end
