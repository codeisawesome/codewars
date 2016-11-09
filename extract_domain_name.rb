# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
#
# domain_name("http://github.com/carbonfive/raygun") == "github"
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

def parse_out_dot_com(url_arr)
  for i in 0..url_arr.length
    if url_arr[i..i+3].join("") == ".com"
      return url_arr[0..i-1].join("")
    end
  end
end

def domain_name(url)
  # Check for empty and nil
  if url.to_s == ''
    return url
  end

  # Parse the url into an array
  url_arr = url.split("")
  i = 0

    if url_arr[0..10].join("") == "http://www."
      url_arr.shift(11)
      parse_out_dot_com(url_arr)
    elsif url_arr[0..6].join("") == "http://"
      url_arr.shift(7)
      parse_out_dot_com(url_arr)
    elsif url_arr[0..11].join("") == "https://www."
      url_arr.shift(12)
      parse_out_dot_com(url_arr)
    elsif url_arr[0..7].join("") == "https://"
      url_arr.shift(8)
      parse_out_dot_com(url_arr)
    end

end
