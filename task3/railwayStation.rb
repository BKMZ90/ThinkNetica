class RailwayStation
	
	def initialize(name_station)
		@name_station = name_station
		@all_trains = []
	end

	def all_trains 			 		#Может показывать список всех поездов на станции, находящиеся в текущий момент
		Puts "All trains: #{@all_trains}"
	end

	def add_train					#станция может принимать поезда
		@all_trains += 1
	end

	def send_train  				#Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).
		@all_trains -= 1
	end 

	def all_train_in_Station_type	#Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
	end

