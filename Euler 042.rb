=begin

The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:
1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value.
For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.
Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

=end


def alphabetical_position(file)

	names = File.read(file).gsub(/\"/,'').split(/,/)

	(0...names.size).each do |x|
		letter_hash = {
			"A" => 1,
			"B" => 2,
			"C" => 3,
			"D" => 4,
			"E" => 5,
			"F" => 6,
			"G" => 7,
			"H" => 8,
			"I" => 9,
			"J" => 10,
			"K" => 11,
			"L" => 12,
			"M" => 13,
			"N" => 14,
			"O" => 15,
			"P" => 16,
			"Q" => 17,
			"R" => 18,
			"S" => 19,
			"T" => 20,
			"U" => 21,
			"V" => 22,
			"W" => 23,
			"X" => 24,
			"Y" => 25,
			"Z" => 26
		}

		name = names[x].split(//)
		name_total = 0
		name.each {|y| name_total += letter_hash[y]}
		names[x] = name_total
	end
	names
end


n=1
count = 0
alphabetical_position("Euler 042.txt").sort!.each do |each|
	n+=1 while each > 0.5*n*(n+1)
	count += 1 if each == 0.5*n*(n+1)
end

p count
