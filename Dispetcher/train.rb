require_relative 'wagon'
require_relative 'manufacturer'

class Train

	include Manufacturer

	attr_reader :speed
	attr_reader :type									#тип вагона нам потребуется пожалуй только для чтения
	
	@@train = {}

	def initialize(number, type)
		@type = type
		@wagon = []
		@speed = BEGIN_SPEED
		@route = []
		@@train[number] = self
 	end

 	def self.find(number)
 		puts @@train[number]
 	end

	def speed_up(speed_up)								#поезд набирает скорость
		@speed += speed_up
	end

	def speed_down(speed_up)							#поезд тормозит
		@speed -= speed_up if @speed > begin_speed
	else
		@speed = BEGIN_SPEED   							#чтобы поезд не имел обратную скорость
	end

	def stop											#остановка поезда
		self.speed = BEGIN_SPEED
	end

	def current_speed									#текущая скорость поезда
		puts "#{@speed}"
	end

	def length											#показываем длину поезда
		puts "Train length = #{@wagon.size}"
	end


	def add_wagon(wagon)							#прицепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		
		@type_wagon = wagon						#Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
		
		if check_speed? && train_wagon?
			add_wagon! 
		else
			puts "Warning: The train in motion or wagon is not #{type_train}"
		end
	end

	def remote_wagon
		if check_speed?
			remote_wagon!
		else
			puts "Warning: The train in motion or wagon is not #{type_train}"
		end
	end

	def wagons
		@wagon
	end

	def set_route(route_name)							#Принимать маршрут следования
		@route = route_name.route
	end


	def delete_route(route_name)						#Принимать маршрут следования
		@route = []
	end

protected												#Выставляю protected т.к. есть наследование от этого класса

	
	attr_writer :speed, :wagon
	attr_accessor :route

	BEGIN_SPEED = 0

	def check_speed? 									#закрываем проверку скорости и типа вагона от посторонних глаз
		@speed.zero?
	end

	def train_wagon?
		self.type == @type_wagon
  	end

	def add_wagon!										#также ни к чему знать как добавляется илиотцепляется вагон
		@wagon << @type_wagon
	end
	
	def remote_wagon!
		@wagon.delete_at(-1)
	end

end