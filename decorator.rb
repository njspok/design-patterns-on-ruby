# demonstrate decorator pattern

class Coffe
	attr_accessor :description

	def cost
		20
	end
end

module MilkDecorator
	def cost
		super + 5
	end
end

module SugarDecorator
	def cost
		super + 3
	end
end

my_coffe = Coffe.new
my_coffe.description = 'coffe 3 in 1'
my_coffe.extend(MilkDecorator)
my_coffe.extend(SugarDecorator)

p my_coffe.description + ' = ' + my_coffe.cost.to_s + ' rub'

