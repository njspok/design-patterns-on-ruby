
# common interface
class Component
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def add(component)
	
	end	
	def print
		puts @name
	end
end

class Node < Component
	def initialize(name)
		@components = [];
		super(name)
	end
	def add(component)
		@components.push component
	end
	def print
		puts '== Node ' + @name
		@components.each do |element|
			element.print
		end
	end
end

class Leaf < Component
	def add(component)
		raise 'Unsupportet operation'
	end
end

# client use Component and common interface to Nodes and Leafs
root = Node.new 'root'
root.add(Leaf.new 'readme')
root.add(Leaf.new 'descripton')
root.add(Leaf.new 'logo.ico')

folder = Node.new 'img'
folder.add(Leaf.new 'ya.jpg')
folder.add(Leaf.new 'google.jpg')
folder.add(Leaf.new 'yahoo.jpg')

root.add(folder)

root.print
