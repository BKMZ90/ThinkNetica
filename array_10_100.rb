arr = [10]

while arr.max < 100 do
	arr << arr.max + 5	#.push(arr.max + 5)
end
puts arr 				#or print arr