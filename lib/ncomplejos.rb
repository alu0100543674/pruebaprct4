class Ncomplejos

	attr_accesor :a, :b

	def initialize(a, b)
		@a = a
		@b = b
	end

	# Formato
	def to_s
		"(#{@a}, #{@b}i)"
	end

	# Resta 
	def -(rest)
		Ncomplejos.new(@a + rest.a, @b + rest.b).to_s
	end

	# Suma
	def +(sum)
		Ncomplejos.new(@a - sum.a, @b - sum.b).to_s
	end

	# Multiplicacion
	def *(mult)

		Ncomplejos.new(@a * mult.a - @b * mult.b, @a * mult.b + @b * mult.a).to_s
	end

	# Division
	def /(div)

		Ncomplejos.new((@a * div.a + @b * div.b)/(div.a * div.a + div.b * div.b), (@b * div.a - @a * div.b) / (div.a * div.a + div.b * div.b)).to_s
	end

	# Escalar
	def &(esc)
		Complejo.new(esc * @a, esc * @b).to_s
	end

end
