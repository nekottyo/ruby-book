
def fizz_buzz(number)
  if number % 15 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number.to_s
  end
end

1.upto(15) do |n|
  puts fizz_buzz(n)
end
