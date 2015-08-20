puts "enter the number"
date = gets.chomp.to_i

puts "enter the month (number 1 .. 12)"
month = gets.chomp.to_i - 1

puts "enter the year"
year = gets.chomp.to_i

all_year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

vis_year = [0]						#Create array from leap years
while vis_year.max < 10000
	vis_year << vis_year.max + 4
end

if vis_year.include?(year) == true	#if year include in array leap years
	all_year[1] +=1 				#then febryary have 29 days
end

sum = 0								#variable for the amount of days of the month indicated
step = 0							#variable for iterate array
while step < month
	sum += all_year[step]
	step += 1
end
all_sum = sum + date
puts "С начала #{year} года прошло(\прошел) #{sum} дней(\день)"