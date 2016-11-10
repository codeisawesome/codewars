# Dave has a lot of data he is required to apply filters to, which are simple enough, but he wants a shorter way of doing so.
#
# He wants the following functions to work as expected:
#
# even # [1,2,3,4,5].even should return [2,4]
# odd # [1,2,3,4,5].odd should return [1,3,5]
# under # [1,2,3,4,5].under(4) should return [1,2,3]
# over # [1,2,3,4,5].over(4) should return [5]
# in_range # [1,2,3,4,5].in_range(1..3) should return [1,2,3]
# They should also work when used together, for example:
#
# (1..100).to_a.even.in_range(18..30) # should return [18, 20, 22, 24, 26, 28, 30]
# And finally the filters should only accept integer values from an array, for example:
#
# ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even # should return [300, 122]

# the trick is to extend the existing array
# if given a range 4..8 ruby saves it as an range (single variable) which is an Enumerable, I can loop over it
# range is a type of object
# if use .delete within an array, the loop doesn't update, so starts behaving strangely

class Array

	def nilnEmpCheck(array)
		array1 = []
		array.each do |element|
			if element.class == String || element == nil

			else
				array1 << element
			end
		end
		return array1
	end

	def even
		cleaned_arr = nilnEmpCheck(self)
		returned_array = []
		cleaned_arr.each do |element|
			if element % 2 == 0
				returned_array << element
			end
		end
		return returned_array
	end

	def odd
		cleaned_arr = nilnEmpCheck(self)
		returned_array = []
		cleaned_arr.each do |element|
			if element % 2 == 1
				returned_array << element
			end
		end
		return returned_array
	end

	def under(n)
		cleaned_arr = nilnEmpCheck(self)
		returned_array = []
		cleaned_arr.each do |element|
			if element < n
				returned_array << element
			end
		end
		return returned_array
	end

	def over(n)
		cleaned_arr = nilnEmpCheck(self)
		returned_array = []
		cleaned_arr.each do |element|
			if element > n
				returned_array << element
			end
		end
		return returned_array
	end

	def in_range(n)
		cleaned_arr = nilnEmpCheck(self)
		# puts cleaned_arr
		returned_array = []
		range = n.to_a
		cleaned_arr.each do |element|
			if element >= range[0] && element <= range[-1]
				returned_array << element
			end
		end
		return returned_array
	end
end
