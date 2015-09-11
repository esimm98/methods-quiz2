module MethodsQuiz2

	def dice_sum(a, b)
		without_doubles?(a, b) ? add_non_doubles(a, b) : add_doubles(a, b) 
	end

	private

		def without_doubles?(a, b)
			a != b ? true : false
		end

		def add_non_doubles(a, b)
			return a + b
		end

		def add_doubles(a, b)
			if a == 6
				a = 1
			else
				a += 1
			end
			return a + b
		end

end