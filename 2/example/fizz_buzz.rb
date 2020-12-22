def fizz_buzz(number)
  return number.to_s if number == 0
  if number % 15 == 0
    "Fizz Buzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    number.to_s
  end
end


(0..15).each do |i| p fizz_buzz(i) end