def nearest_larger(arr, idx)
  dist = 1
  while true
    left = idx - dist
    right = idx + dist

    if left >= 0 && arr[left] > arr[idx]
      return left
    elsif right < arr.length && arr[right] > arr[idx]
      return right
    elsif left < 0 && right > arr.length
      return nil
    end

    dist += 1
  end

end
# puts(nearest_larger([9,3,4,8], 1))
