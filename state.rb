
class Father
	attr_accessor :state, :good, :angry
	def initialize
		@good = Good.new(self)
		@angry = Angry.new(self)
		
		@state = @good
	end
	def takeMoney
		@state.takeMoney
	end
end

class FatherState
	def initialize(context)
		@context = context
	end
	def takeMoney
		raise 'must implement'
	end
end

class Angry < FatherState
	def takeMoney
		puts 'no have money!!'
	end
end

class Good < FatherState
	def takeMoney
		puts 'take some monyeq!'
		@context.state = @context.angry
	end
end

man = Father.new
man.takeMoney
man.takeMoney
man.takeMoney


