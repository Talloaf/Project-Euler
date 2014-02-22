=begin

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?

=end
require 'prime'

answer = []
(2..9).each do |i|
	(1..i).to_a.permutation.each do |x|
		num = ""
		x.each {|y| num << y.to_s}
		num = num.to_i
		next if !num.prime?
		answer << num
	end
end

p answer[-1]