#incapsulate alhoritm

class Sender
	def send
		puts 'send product starting'
		takeBox
		takeProduct
		pushProductInBox
		seal
		pushToTransporter
		puts 'send product complete'
	end
	
	private
	def takeBox
		nil
	end
	def takeProduct
		puts 'take product'
	end
	def pushProductInBox
		nil
	end
	def seal
		nil
	end
	def pushToTransporter
		puts 'push to transporter'
	end
end

class VipSender < Sender
	private
	def takeBox
		puts 'take a box'
	end
	def pushProductInBox
		puts 'push product into box'
	end
	def seal
		puts 'seal'
	end
end

class SimpleSender < Sender
	private
end

sender = SimpleSender.new
sender.send

sender = VipSender.new
sender.send

