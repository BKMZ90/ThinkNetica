class TrainPassenger < Train
	attr_reader :type
	
	def initialize
		super
		@type = "Passenger"
	end
end