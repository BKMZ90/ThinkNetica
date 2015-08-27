class Train
	
	def initialize(type, wagon)
		@type = type
		@wagon = wagon
		@speed = BEGIN_SPEED
		@route = []
	end

	def speed_up(speed)													#поезд набирает скорость
		@speed += speed
	end

	def speed_down(speed)												#поезд тормозит
		@speed -= speed if @speed > BEGIN_SPEED
	end

	def stop																		#остановка поезда
		self.speed = BEGIN_SPEED
	end

	def Current_speed														#текущая скорость поезда
		Puts "#{@speed}"
	end

	def train_length														#показываем длину поезда
		puts "Train length = #{@wagon}"
	end

	def add_wagon																#прицепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		 if @speed == BEGIN_SPEED									#Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
			@wagon += 1 
			else
				puts "Warning: The train in motion"
		end
	end

	def remote_wagon											#отцепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		if @speed == BEGIN_SPEED
			@wagon -= 1
			else
				puts "Warning: The train in motion"
		end
	end

	def set_route(route_name)															#Принимать маршрут следования
		@route = route_name.route
	end

	def delete_route(route_name)															#Принимать маршрут следования
		@route = []
	end

	protected

	attr_reader :type														#тип вагона нам потребуется пожалуй только для чтения
	attr_accessor :speed
	attr_accessor :route

	#def check_speed 			#закрываем проверку скорости от посторонних глаз
	#	@speed = BEGIN_SPEED
	#end

	BEGIN_SPEED = 0
end



=begin
	def itenerary_agree													
	end					#перемещаться между станциями
	def itenerary_status			#Показывать предыдущую станцию, текущую, следующую, на основе маршрута
	end
	protected 																		#т.к. у этого класса есть подклассы (т.е. мы хотим иметь доступ из подклассов к тому что ниже но не нужно этого видеть из вне)
=end
