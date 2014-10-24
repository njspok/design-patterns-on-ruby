class Button
end

class AirButton < Button
end

class SimpleButton < Button
end

class Input
end

class AirInput < Input
end

class SimpleInput < Input
end

class Factory
	def makeButton
		raise 'must implement'
	end
	
	def makeInput
		raise 'must implement'
	end
end

class AirFactory < Factory
	def makeButton
		AirButton.new
	end
	
	def makeInput
		AirInput.new
	end
end

class SimpleFactory < Factory
	def makeButton
		SimpleButton.new
	end
	
	def makeInput
		SimpleInput.new
	end
end


factory = SimpleFactory.new

# equivalet code
button = factory.makeButton
input = factory.makeInput
puts button.class
puts input.class

factory = AirFactory.new

# equivalet code
button = factory.makeButton
input = factory.makeInput
puts button.class
puts input.class


