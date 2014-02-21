=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

n = 2520  #It has to be bigger than this number as it was the answer for 1-10

loop do
  n += 20  #the answer has to be a multiple of 20
  boolean = true
  x = 11  #numbers 1-10 are all factors of 11-20 and therefore no need to test
  while boolean && x < 21
    if n % x != 0
      boolean = false
    end
    break if !boolean
    x += 1
  end
  break if boolean
end

puts n
