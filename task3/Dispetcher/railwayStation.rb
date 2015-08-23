class RailwayStation
	attr_reader :name_station

	def initialize(name_station)
	
	end

	def take_in						#Может принимать поезда

	end

	def all_train_in_Station 		#Может показывать список всех поездов на станции, находящиеся в текущий момент
	end

	def all_train_in_Station_type	#Может показывать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
	end

	def send_train  				#Может отправлять поезда (при этом, поезд удаляется из списка поездов, находящихся на станции).
	end 