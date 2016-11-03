  def partlist(arr)
    len = arr.length
    i = 0
    masterArr = []
    while i <= len do
      masterArr<<arr[0..i].join(" ") + arr[i+1..len].join(" ")
    end
