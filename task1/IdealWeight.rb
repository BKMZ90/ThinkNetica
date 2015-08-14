puts "Как тебя зовут? (пиши латинскими буквами)"
name = gets.chomp

puts "Какой у тебя рост?"
height = gets.chomp

a = height.to_i - 110

if a <= 0 
	puts "#{name}, привет! Твой вес идеален!"
else
	puts "#{name}, привет! Твой идеальный вес #{a} кг."
end