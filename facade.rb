class Order
	def add(cart)
		puts 'add products in cart to order'
	end
	def save()
		puts 'save order in db'
	end
	def id()
	
	end
end

class Cart
	def add(product)
		puts "add product #{product.name} to cart"
	end
	def clear()
		puts 'clear cart'
	end
end

class Product
	attr_accessor :name
	def initialize(name)
		@name = name
	end

end

# this is facade class
class ShopService
	def create_order(cart)
		order = Order.new
		order.add(cart)
		order.save
		cart.clear
		return order.id
	end
end

# users actions
cart = Cart.new
cart.add(Product.new('coffe'))
cart.add(Product.new('bread'))
cart.add(Product.new('game'))

# facade action
shop = ShopService.new
shop.create_order(cart)
