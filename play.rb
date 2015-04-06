restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
array = []
restaurant_menu.each do |key, value|
  array << value
end
p array
