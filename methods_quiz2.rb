module MethodsQuiz2

	def dice_sum(a, b)
		without_doubles(a, b) ? add_non_doubles(a, b) : add_doubles(a, b) 
	end

	def max_maybe(a, b)
		if (double(a, b))
			return 0
		elsif (equal_remainder(a, b))
			return_max(a, b)
		else
			return_min(a, b)
		end
	end

	def squirrels_play?(temp, summer)

	end

	private

		def without_doubles(a, b)
			a != b ? true : false
		end

		def double(a, b)
			a == b
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


		def equal_remainder(a, b)
			a % 5 == b % 5
		end

		def return_max
			if (a > b)
				return a
			else
				return b
			end
		end

		def return_min
			if (a < b)
				return a
			else
				return b
			end
		end

end