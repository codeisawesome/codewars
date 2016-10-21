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
end
