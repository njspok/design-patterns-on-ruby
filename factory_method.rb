
class Toy
	def say
		raise 'must implement'
	end
end

class CnCatToy < Toy
	def say
		puts 'meeee'
	end
end

class RuCatToy < Toy
	def say
		puts 'meow'
	end
end

class Factory
	def self.make(toy)
	
	end
end

class RuFactory
	def self.make(toy)
		toyName = 'Ru' + toy.to_s + 'Toy'
		Object.const_get(toyName).new
	end
end

class CnFactory
	def self.make(toy)
		Object.const_get('Cn' + toy.to_s + 'Toy').new
	end
end


toy = RuFactory.make('Cat');
toy.say

toy = CnFactory.make('Cat')
toy.say
