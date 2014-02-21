=begin

The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.
There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
How many circular primes are there below one million?

=end

require 'prime'

class Integer

	def is_circular?
		return false if !self.prime?
		circle = self.circular_array
		isPrime = true
		circle.each do |y|
			if !y.prime?
				isPrime = false
				break
			end
		end
		if isPrime
			circle.each {|x| $circ_primes << x}
			return true
		end
		return false
	end

	def circular_array
		array = self.to_s.split(//).map(&:to_i)
		circ_array = []
		(1...array.size).each do |x|
			array.move(-1,0)
			num = ""
			array.each {|y| num += y.to_s}
			num = num.to_i
			circ_array << num
		end
		return circ_array
	end

end

class Array
	def move(from, to)
		insert(to, delete_at(from))
	end

	def move_by_name(name, to)
		return self if index(name).nil? # return original array if name not found
		move(index(name), to)
	end
end

$circ_primes = [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97]

(98...1000000).each do |n|
	next if $circ_primes.include?(n)
	next if n.to_s.match(/[024568]/)
	$circ_primes << n if n.is_circular?
end

p $circ_primes.uniq.size