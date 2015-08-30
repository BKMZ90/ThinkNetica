=begin
Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара. На основе введенных данных требуетеся:
1. Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара.
2. Также вывести итоговую сумму за каждый товар.
3. Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end


product_name = [].to_a
price_one = [].to_a
number_of = [].to_a
product_price = [].to_a
name = nil

while name != "stop" do
	puts "enter please product name"
	name = gets.chomp
	product_name << name
	
	if name != "stop"
	puts "enter please price"
	price = gets.chomp.to_f
	price_one << price

	puts "enter please number of"
	number = gets.chomp.to_f
	number_of << number
	
	product_price << price * number
	end
	
	product_name.delete("stop")
end

sum_product_price = 0												#сумируем значения в массиве с умноженными ценами на колличество для получения общей стоимости (3 задача)
product_price.each{|a| sum_product_price+=a}


stoimost = Hash[price_one.zip number_of]
full_purchase = Hash[product_name.zip stoimost] 					#cоздаём хэш из хэшей для выполнения 1 задачи
full_product_price = Hash[product_name.zip product_price] 			# 2 задача


puts full_purchase													#1 задача решена
puts full_product_price												#2 задача решена

puts "ИТОГО: #{sum_product_price}"									#3 задача решена

puts "ИТОГО: #{sum_product_price}"									#3 задача решена

