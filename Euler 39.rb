=begin

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
{20,48,52}, {24,45,51}, {30,40,50}
For which value of p ≤ 1000, is the number of solutions maximised?

=end

def num_solutions(p)
	count = 0
	(1..p/2).each do |a|
		(a..p/2).each do |b|
			c = p-a-b
			count += 1 if a**2 + b**2 == c**2
		end
	end
	count
end

largest = 0
(72..1000).each do |n|
	num = num_solutions(n)
	if num > largest
		largest = num
		p n
	end
end