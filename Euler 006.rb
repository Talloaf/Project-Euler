=begin
The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

sum_of_square = 0
sum_before_square = 0

(1..100).each do |n|
  sum_before_square = n + sum_before_square
  sum_of_square = n**2 + sum_of_square
end

puts sum_before_square**2 - sum_of_square
