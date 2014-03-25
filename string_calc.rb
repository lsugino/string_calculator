class StringCalculator
	def add(string)
		if string.empty?
			0
		else
			int_array = to_int_array(string)
			add_array(int_array)
		end
	end

	def to_int_array(string)
		string.split(/[\n ,]+/).map { |s| s.to_i }
	end

	def add_array(array)
		array.inject { |sum, x| sum + x }
	end
end