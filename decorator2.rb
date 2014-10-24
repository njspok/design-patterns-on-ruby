
require 'delegate'

class Camera
	def get_picture()
		100
	end
end

class Decorator < SimpleDelegator

end

class SepiaFilter < Decorator
	def get_picture
		__getobj__.get_picture + 20
	end
end

camera = Camera.new
camera = SepiaFilter.new(camera)
camera = SepiaFilter.new(camera)

puts camera.get_picture
