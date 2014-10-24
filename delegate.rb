require 'delegate'

class Person
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

person = Person.new('oleg')
delegator = SimpleDelegator.new(person)
puts delegator.name
