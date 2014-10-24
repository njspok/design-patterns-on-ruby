require 'singleton'

class Registry
	include Singleton
end

# error, new is private method
# reg1 = Registry.new

reg1 = Registry.instance
reg2 = Registry.instance

puts reg1 == reg2 # true

