class Train
	attr_reader :speed

	def initialize(type, wagon)
		@type = type
		@wagon = wagon
		@speed = begin_speed
		@route = []
	end

	def speed_up(speed_up)													#поезд набирает скорость
		@speed += speed_up
	end

	def speed_down(speed_up)												#поезд тормозит
		@speed -= speed_up if @speed > begin_speed
	else
		@speed = begin_speed   #чтобы поезд не имел обратную скорость
	end

	def stop																		#остановка поезда
		self.speed = begin_speed
	end

	def current_speed														#текущая скорость поезда
		puts "#{@speed}"
	end

	def length														#показываем длину поезда
		puts "Train length = #{@wagon}"
	end

	def add_wagon							#прицепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		 									#Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
		if check_speed?
			add_wagon! 
		else
			puts "Warning: The train in motion"
		end
	end

	def remote_wagon											#отцепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		if check_speed?
			remote_wagon!
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
	attr_writer :speed
	attr_accessor :route

	def check_speed?
		@speed.zero? # = begin_speed
	end

	def add_wagon!
		@wagon += 1
	end
	
	def remote_wagon!
		@wagon -= 1
	end
	
	def begin_speed      #начальная скорость, однако работает и без этого метода
		0
	end


	#def check_speed 			#закрываем проверку скорости от посторонних глаз
	#	@speed = BEGIN_SPEED
	#end

	#BEGIN_SPEED = 0
end



=begin
	def itenerary_agree													
	end					#перемещаться между станциями
	def itenerary_status			#Показывать предыдущую станцию, текущую, следующую, на основе маршрута
	end
	protected 																		#т.к. у этого класса есть подклассы (т.е. мы хотим иметь доступ из подклассов к тому что ниже но не нужно этого видеть из вне)
=end
