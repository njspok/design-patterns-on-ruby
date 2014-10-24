class Lamp
	def on
		puts 'lamp on'
	end
	def off
		puts 'lamp off'
	end
end

module LevelLamp
	def off
		puts 'lamp off'
	end
	def ligth(level)
		puts 'ligth ' + level.to_s
	end
end

class TableLamp
	include LevelLamp
end

class LampAdapter
	include LevelLamp
	def initialize(lamp)
		@lamp = lamp
	end
	def off
		@lamp.off
	end
	def ligth(level)
		@lamp.on
	end
end

l = TableLamp.new
l.ligth(100);
l.ligth(200);
l.off

light = LampAdapter.new(Lamp.new)
light.ligth(100);
light.ligth(200);
light.off
