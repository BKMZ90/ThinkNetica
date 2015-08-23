class Train
	attr_reader :type		#тип вагона нам потребуется пожалуй только для чтения
	
	def initialize(type, wagon)
		@type = type
		@wagon = wagon
		@speed = 0
	end

	def speed_up(speed)		#поезд набирает скорость
		@speed += speed
	end

	def speed_down(speed)	#поезд тормозит
		@speed -+ speed
	end

	def stop				#остановка поезда
		@speed = 0
	end

	def Current_speed		#текущая скорость поезда
		Puts "#{@speed}"
	end

	def train_length		#показываем длину поезда
		puts "Train length = #{@wagon}"
	end

	def add_wagon			#прицепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		if @speed == 0		#Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
			@wagon += 1
			else
				puts "Warning: The train in motion" 	
		end		
	end

	def remote_wagon		#отцепляем вагоны согласно условию (по одному вагону за операцию, метод просто увеличивает количество вагонов). 
		if @speed == 0
			@wagon -= 1
			else
				puts "Warning: The train in motion"
		end
	end



	def itenerary_agree		#Принимать маршрут следования
	end

							#перемещаться между станциями

	def itenerary_status	#Показывать предыдущую станцию, текущую, следующую, на основе маршрута
	end