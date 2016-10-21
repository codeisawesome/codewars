def iq_test(numbers)
  num_array = numbers.split(" ").map(&:to_i)
  even = []
  odd = []

  num_array.each do |x|
    if x % 2 == 0
      even.push(x)
    else
      odd.push(x)
    end
  end

  if even.length > odd.length
    num_array.index(odd[0]) + 1
  else
    num_array.index(even[0]) + 1
  end
end

iq_test("1 2 3 7 5 9")
