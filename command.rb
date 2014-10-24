
module Command
	def execute()
		raise 'must implement'
	end
	def undo()
		raise 'must implement'
	end
end

class UpdateKernel
	include Command
	
	def execute
		puts 'update kernel'
	end
end

class UpdateSoft
	include Command
	
	def execute
		puts 'update soft'
	end
end

class MacroCommand
	include Command
	
	def initialize()
		@list = []
	end
	
	def add(command)
		@list.push(command)
	end
	
	def execute
		@list.each do |command|
			command.execute
		end
	end
end

class Processor
	def initialize
		@list = [];
	end
	
	def add(command)
		@list.push(command)
	end
	
	def run
		@list.each do |command| 
			command.execute()
		end
	end
end

processor = Processor.new
processor.add(UpdateKernel.new)
processor.add(UpdateSoft.new)

macro = MacroCommand.new
macro.add(UpdateKernel.new)
macro.add(UpdateSoft.new)
processor.add(macro)

processor.run
