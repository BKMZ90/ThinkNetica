require_relative 'railroad_station'
require_relative 'route'
require_relative 'train'
require_relative 'train_cargo'
require_relative 'train_passanger'
require_relative 'wagon'
require_relative 'wagon_cargo'
require_relative 'wagon_passanger'

command = nil

while command != "exit" do
	puts "Вас прветствует наша супермеганереально крутая программа! Для ознакомления с командами введите Help, для выхода введите exit"
	command = gets.chomp
	
	if command == "help"
		puts "Для создания станции введите 'имя_станции=RailWayStation.new'"
		puts "Для создания поезда введите 'имя_поезда=Train.new(тип, количество вагонов)' тип вагона может быть Cargo или Passanger (в кавычках)"
		puts "Для добавления вагона к поезду введите 'имя_поезда.add_wagon'"
		puts "Для отцепления вагона от поезда введите 'имя_поезда.remote_wagon'"
		#puts ""	Помещать поезда на станцию
		#puts ""	Просматривать список станций и список поездов на станции
	#else 
		#Puts "WHAT? Для ознакомления с командами введите Help, для выхода введите exit"
	end
end


=begin	

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

=end