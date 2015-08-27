class Route
	attr_accessor :route
	
	def initialize(start, the_end)					#начальный конечный пункт
		@route = [1, 2]
		@route[0] = start
		@route[-1] = the_end
	end

	def route_list					#маршрутный лист
		puts "#{@route}"
	end

	def add_station(route, num = -2)					#добавить станцию в маршрут 
		@station.insert(num, name_st)
	end

	def delete_station(route)				#удаляем станцию из маршрута
		@station.delete(name_st)
	end 	
end