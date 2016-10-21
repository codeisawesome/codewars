def find_it(seq)
  unique_elements = seq.uniq

  odd_element = 0

  unique_elements.each do |x|
    if seq.count(x) % 2 == 0
    else
      odd_element = x
    end
  end

  return odd_element
end
