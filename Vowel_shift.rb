# You get a "text" and have to shift the vowels by "n" positions to the right.
# (Negative value for n should shift to the left.)
# "Position" means the vowel's position if taken as one item in a list of all vowels within the string.
# A shift by 1 would mean, that every vowel shifts to the place of the next vowel.
#
# Shifting over the edges of the text should continue at the other edge.
#
# Example:
#
# text = "This is a test!"
# n = 1
# output = "Thes is i tast!"
#
# text = "This is a test!"
# n = 3
# output = "This as e tist!"
#
# If text is null or empty return exactly this value.
# Vowels are "a,e,i,o,u".
#
#
# Have fun coding it and please don't forget to vote and rank this kata! :-)
#
# I have created other katas. Have a look if you like coding and challenges.


def vowel_shift(text,n)

  # Check for empty and nil
  if text.to_s == ''
    return text
  end

  # letrs_arr = ["t", "h", "i", "s" ...]
  letrs_arr = text.split("")
  letrs_arr_len = letrs_arr.length
  letr_arr_ind = 0
  # big_array [["i", 2, var], ["i", 5, var], ["a", 8, var], ["e", 11, var]]
  # var will depend on the given n
  big_array = []
  # define array for where letters should go back to
  vowels_position_index = []
  vowels = ["a","e","i","o","u","A","E","I","O","U"]

  # this is to construct V1 of big_array [["i", 2, 0], ["i", 5, 1], ["a", 8, 2], ["e", 11, 3]]
  while letr_arr_ind < letrs_arr.length
    if vowels.include? letrs_arr[letr_arr_ind]
      big_array << [letrs_arr[letr_arr_ind]]
      vowels_position_index << letr_arr_ind
    end
    letr_arr_ind += 1
  end

  roted_big_array = big_array.rotate(-n)

  for i in 0..vowels_position_index.length-1
    letrs_arr[vowels_position_index[i]] = roted_big_array[i]
  end

  string = letrs_arr.join("")
  return string

end
