# def non_duplicated_values(values)
#   values.find_all {|a| values.count(a) == 1}
#   return values.count(2)
# end
# puts(non_duplicated_values([2,2,2,2,4,5,6,7,8,8,9,9,2,9,10,15]))

def array_of_fixnums?(array)
  array.all? { |x| x.is_a? Fixnum }
end
puts(array_of_fixnums?(['a',1,:b]))
