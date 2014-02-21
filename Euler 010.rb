=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

prime_list = (0...2_000_000).to_a

prime_list.each do |x|
    if x != 0 && x != 1
        (2..(2_000_000/x)).each { |n|  prime_list[x*n] = 0}
    end
end

puts prime_list.inject(:+) - 1


=begin
alternate solution…..

require 'prime'
puts Prime.each(2_000_000).inject(:+)
=end
