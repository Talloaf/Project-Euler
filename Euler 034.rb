=begin

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.

=end

class Integer

	def factorial
		return 1 if self == 0
		(1..self).inject(:*)
	end

	def sum_digit_factorial
		self_array = self.to_s.split(//).map {|x| x.to_i}
		self_array.map! {|x| x = x.factorial}
		return self_array.inject(:+)
	end

end

sum = 0
(11..100000).each {|x| sum += x if x == x.sum_digit_factorial}
p sum