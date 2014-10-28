
require 'delegate'

class Person
	def initialize(name, age)
		@name = name
		@age = age
	end
	# very slow operation
	def get_name
		sleep 2
		@name
	end
	# very slow operation
	def get_age
		sleep 2
		@age
	end
end


class CacheProxyPerson < SimpleDelegator
	def initialize(obj)
		super
		@name = nil
		@age = nil
	end
	def get_name
		if @name == nil
			@name = __getobj__.get_name
		else
			@name
		end
	end
	def get_age
		if @age == nil		
			@age = __getobj__.get_age
		else
			@age
		end
	end
end

person  = Person.new('Mike', 21)
proxy = CacheProxyPerson.new(person)

puts 'first call Person, very slow'
puts proxy.get_name
puts proxy.get_age

puts 'second call Person, fast'
puts proxy.get_name
puts proxy.get_age

puts 'after call Person, fast'
puts proxy.get_name
puts proxy.get_age
