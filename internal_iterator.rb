
# realize internal iterator
class Bag
	def initialize(items)
		@items = items
	end
	def each
		@items.each do |item|
			yield item
		end
	end
end

items = ['banana', 'apple', 'orange', 'kiwi']
bag = Bag.new items
bag.each do |item|
	puts item
end
