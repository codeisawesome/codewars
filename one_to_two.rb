# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible, containing distinct letters, - each taken only once - coming from s1 or s2.

# a = "xyaabbbccccdefww"
# b = "xxxxyyyyabklmopq"
# longest(a, b) -> "abcdefklmopqwxy"
#
# a = "abcdefghijklmnopqrstuvwxyz"
# longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"

def longest(a1, a2)
  #split the string into an array
  arra1 = a1.split("")
  arra2 = a2.split("")

  #join the two array above together
  arr = arra1 + arra2

  #sort the joined array
  arra = arr.uniq.sort()

  #return the array
  return arra.join("")
end
