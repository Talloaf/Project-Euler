=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

stop = false
(1..999).each do |a|
    (a..999).each do |b|
        if a**2 + b**2 == (1000 - a - b)**2  #Solving both equations for c^2
            puts a*b*(1000 - a - b)
            stop = true
        end
    	break if stop 
    end
    break if stop
end