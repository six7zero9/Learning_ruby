def append(arr, n)
  return arr if n < 0
  arr << n
  append(arr, n-1)
end

p append([], 2)
