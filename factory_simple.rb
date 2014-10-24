
class Animal
	def say
	
	end
end

class Dog < Animal
	def say	
		puts 'wow'
	end
end

class Cat < Animal
	def say
		puts 'meow'
	end
end

class AnimalFactory
	def self.get(name)
		Object.const_get(name).new
	end
end

animal = AnimalFactory.get('Dog')
animal.say

animal = AnimalFactory.get('Cat')
animal.say




