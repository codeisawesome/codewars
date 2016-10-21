def maskify(cc)
  characters_to_replace = cc.length - 5
  cc[0..characters_to_replace] = "#" * (characters_to_replace + 1)
  return cc
end
