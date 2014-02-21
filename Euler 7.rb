=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10001st prime number?
=end

nth_prime = 6
num = 11

while nth_prime <= 10001
  num += 2 #this skips even numbers
  prime = true
  n = 1
  while n <= (num/n).round
    n += 2 #this skips even factors
    if num % n == 0
      prime = false
    end
    break if !prime
  end
  if prime 
    nth_prime += 1
  end
end

print num

=begin
alternate solution…..

require 'prime'
print Prime.first(10001).last
=end