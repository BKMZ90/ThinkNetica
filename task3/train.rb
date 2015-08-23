class Train
	attr_accessor :speed	#может набирать, показывать скорость и тормозить
	attr_accessor :wagon 	#колличество вагонов может изменяться
	attr_reader :type
	
	@wagon = 0


	def initialize(type, wagon)
		@type = type
		@wagon = wagon
	end

	def add_wagon					#прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
		@wagon += 1
	end

	def remote_wagon
		@wagon -= 1
	end

	def itenerary_agree		#Принимать маршрут следования
	end

												#перемещаться между станциями

	def itenerary_status	#Показывать предыдущую станцию, текущую, следующую, на основе маршрута
	end