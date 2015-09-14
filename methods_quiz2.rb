module MethodsQuiz2
	
	def without_doubles(die1, die2, no_doubles)
		if(!no_doubles || die1 != die2)
			add_non_doubles(die1, die2)
		else
			add_doubles(die1, die2)
		end
	end

	def max_maybe(a, b)
		if (a == b)
			return 0
		elsif (a % 5 == b % 5)
			return_min(a, b)
		else
			return_max(a, b)
		end
	end

	def squirrels_play?(temp, summer)
		temp >= 60 && ((temp <= 90 && !summer) || (temp <= 100 && summer))
	end

	def red_ticket(a, b, c)
		all_equal(a, b, c) ? (all_2(a, b, c) ? 10 : 5) : (a_different(a, b, c) ? 1 : 0)
	end

	private

		def no_doubles(a, b)
			no_doubles ? true : false
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


		def return_max(a, b)
			if (a > b)
				return a
			else
				return b
			end
		end

		def return_min(a, b)
			if (a < b)
				return a
			else
				return b
			end
		end

		def all_equal(a, b, c)
			a == b && b == c ? true : false
		end

		def all_2(a, b, c)
			a == 2 ? true : false
		end

		def a_different(a, b, c)
			a != b && a != c ? true : false
		end

end