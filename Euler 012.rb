=begin
The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
=end

def factors_500?(tri)  #returns a true value if the argument has greater than 500 divisors
	array = Array.new
	(1..Math.sqrt(tri)).each do |x| #For every divisor above the sqrt, there is a corresponding divisor below
		if tri % x == 0
			array.push(x)
			array.push(tri/x)
		end
	end
	return true if array.length > 500
end


triangle = 0

(1..(1.0/0.0)).each do |y| #runs from 1 to infinity until the answer is found
	triangle += y
	break if factors_500?(triangle)
end

puts triangle