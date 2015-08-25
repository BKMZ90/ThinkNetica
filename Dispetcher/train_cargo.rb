class TrainCargo < Train
	attr_reader :type

	def initialize
		super
		@type = "cargo"
	end
end