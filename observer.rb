require 'observer'


class Post
	include Observable
	
	def publish()
		changed		
		notify_observers(Time.now, self)
	end
end

class Sender
	def initialize(name)
		@name = name
	end

	def update(time, post)
		p 'Ok! im ' + @name + ' recive message ' + time.to_s
	end
end


post = Post.new
sender1 = Sender.new 'Bil'
sender2 = Sender.new 'Bob'

post.add_observer sender1
post.add_observer sender2

post.publish
