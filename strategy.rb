# demonstrate pattern strategy

class People
	attr_accessor :profession
	def work()
		@profession.do()
	end
end

class ProfessionBehavior
	def do()
		raise 'not implemented'
	end
end

class ScientistBehavior < ProfessionBehavior
	def do()
		print "researching!"
	end
end

class WorkingBehavior < ProfessionBehavior
	def do()
		print "jobbing!"
	end
end

man = People.new
man.profession = ScientistBehavior.new
man.work()
