=begin

You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end

def day_counter(start_year, end_year, start_day_of_week)
	day = start_day_of_week
	count = 0
	(start_year..end_year).each do |current_year|
		(1..12).each do |month|
			count += 1 if day == 0
			day += days_in_month(month, current_year)
			day %= 7
		end
	end
	puts day
	return count
end

def days_in_month(month, year)
	month_hash = {
		1 => 31,
		2 => 28,
		3 => 31,
		4 => 30,
		5 => 31,
		6 => 30,
		7 => 31,
		8 => 31,
		9 => 30,
		10 => 31,
		11 => 30,
		12 => 31
	}
	return ( month != 2 || (year % 4 != 0 || (year % 100 == 0 && year % 400 != 0) ) ? month_hash[month] : 29 )
end

puts day_counter(1901, 2000, 2)
