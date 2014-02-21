=begin
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
=end

number = 600851475143
n = 2

while n <= number
  if number % n == 0
      largest_prime = n
      number = number / n
  end
  n += 1
end

puts largest_prime
