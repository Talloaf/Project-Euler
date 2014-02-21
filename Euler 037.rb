=begin
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right,
and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
=end

require 'prime'

prime_array = []

Prime.each do |x|
	next if x < 11
	string = x.to_s
	stop = false
	(1...string.length).each do
		string.slice!(0)
		if !string.to_i.prime?
			stop = true
			break
		end
	end
	next if stop

	string = x.to_s
	(1...string.length).each do
		string.slice!(-1)
		if !string.to_i.prime?
			stop = true
			break
		end
	end

	prime_array << x if !stop
	break if prime_array.size == 11
end

p prime_array
p prime_array.inject(:+)