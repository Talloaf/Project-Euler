=begin
	
A perfect number is a number for which the sum of its proper divisors is exactly equal to the number.
For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24.
By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers.
However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.
	
=end


def sum_proper_divisors(num)
	sum = 1
	(2..num**(0.5)).each do |n|
		if num % n == 0
			sum += n
			sum += num / n if n**2 != num
		end
	end
	return sum
end

abundant_array = []
(6..28123).each { |n|  abundant_array << n if sum_proper_divisors(n) > n }

def is_sum_of_two_abun? (num, array)
	array.each do |x|
		break if x >= num
		return true if array.include?(num - x)
	end
	return false
end

num_array = (0..28123).to_a

(0...abundant_array.size).each do |x|
	(x...abundant_array.size).each do |y|
		z = abundant_array[x] + abundant_array[y]
		break if z > 28123
		num_array[z] = 0
	end
end

puts num_array.inject(:+)