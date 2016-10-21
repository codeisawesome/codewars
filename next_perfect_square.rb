def findNextSquare(sq)
  if ((sq ** 0.5)) % 1 == 0
    (((sq ** 0.5) + 1) ** 2).to_i
  else
    -1
  end
end


findNextSquare(121) #--> returns 144
findNextSquare(625) #--> returns 676
findNextSquare(114) #--> returns -1 since 114 is not a perfect
