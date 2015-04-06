# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)
  sort = false
  until sort == true
    sort = true
    0.upto(arr.length - 2) do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          sort = false
        end

      end

  end
  arr
end

# p bubble_sort([5, 4, 3, 2, 1])
