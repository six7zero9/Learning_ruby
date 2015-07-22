def fizzbuzz(num1, num2)
  (num1..num2).each do |num|
    if num % 3 == 0
      if num % 5 == 0
        p "fizzbuzz"
      else
        p "fizz"
      end
    elsif num % 5 == 0
      p "buzz"
    else
      p num
    end
  end
end

fizzbuzz(1,100)
