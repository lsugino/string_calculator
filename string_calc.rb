class StringCalculator
	def add(string)
		if string.empty? 
			return 0
		else
			int_array = to_int_array(string)
			neg_array = find_neg(int_array)
			if neg_array.empty?
				add_array(int_array)
			else
				send_error(neg_array)
			end
		end
	end

	def to_int_array(string)
		if string.start_with?("//")
      string.gsub!(/^[^(\d|\-)]*/, '')
    end
		string.split(/[^(\d|\-)]+/).map { |s| s.to_i }
	end

	def find_neg(array)
		array.select { |x| x < 0 }
	end

	def add_array(array)
		array.inject { |sum, x| sum + x }
	end

	def send_error(array)
		if array.count == 1
			"Negatives not allowed. #{array} is invalid."
		else
			"Negatives not allowed. #{array} are invalid numbers."
		end
	end
end