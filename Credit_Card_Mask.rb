def maskify(cc)
  if cc.length > 4
    char_to_r = cc.length - 5
    cc[0..char_to_r] = "#" * (char_to_r + 1)
    return cc
  else
    return cc
  end
end
