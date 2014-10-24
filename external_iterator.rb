class Box
	def each
		yield 1
		yield 2
		yield 3
	end
end

b = Box.new
iter = b.to_enum
p iter.next
p iter.next
p iter.next
p iter.next
