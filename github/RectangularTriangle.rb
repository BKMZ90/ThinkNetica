puts "Введите три стороны треугольника"
x = gets.chomp.to_i
y = gets.chomp.to_i
z = gets.chomp.to_i

c = [x, y, z].sort.reverse

if c[0] ** 2 == c[1] ** 2 + c[2] ** 2
	puts "Треугольник прямоугольный"
else
	c[0] == c[1] || c[1] == c[2] || c[2] == c[0]
	puts "треугольник равнобедренный"
end