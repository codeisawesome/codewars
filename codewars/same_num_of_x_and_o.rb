def XO(str)
  array = str.split("")
  xs = []
  os = []

  array.each do |letter|
    if letter == "x" || letter == "X"
      xs.push(letter)
    elsif letter == "o" || letter == "O"
      os.push(letter)
    else
    end
  end

  if xs.empty? && os.empty?
    true
  elsif xs.length == os.length
    true
  else
    false
  end
end

XO("ooxx") #=> true
XO("xooxx") #=> false
XO("ooxXm") #=> true
XO("zpzpzpp") #=> true // when no 'x' and 'o' is present should return true
XO("zzoo") #=> false
