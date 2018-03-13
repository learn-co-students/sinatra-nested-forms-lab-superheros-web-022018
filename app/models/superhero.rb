class Superhero
	attr_accessor :name, :power, :bio, :team

	def initialize(name, power, bio, team)
		@power = power
		@name = name
		@bio = bio
		@team = team
	end
end