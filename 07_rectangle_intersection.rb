# Write a function, `rec_intersection(rect1, rect2)` and returns the
# intersection of the two.
#
# Rectangles are represented as a pair of coordinate-pairs: the
# bottom-left and top-right coordinates (given in `[x, y]` notation).
#
# Hint: You can calculate the left-most x coordinate of the
# intersection by taking the maximum of the left-most x coordinate of
# each rectangle. Likewise, you can calculate the top-most y
# coordinate of the intersection by taking the minimum of the top most
# y coordinate of each rectangle.
#
# Difficulty: 4/5

def rec_intersection(rect1, rect2)
  x_max = [rect1[0][0], rect2[0][0]].max
  y_max = [rect1[0][1], rect2[0][1]].max

  x_min = [rect1[1][0], rect2[1][0]].min
  y_min = [rect1[1][1], rect2[1][1]].min

  return nil if rect1[1][1] < rect2[0][1] || rect1[1][0] < rect2[0][0]
  result = [[x_max, y_max],[x_min, y_min]]

end

# p rec_intersection(
#   [[1, 1], [2, 2]],
#   [[4, 4], [5, 5]]
# )
