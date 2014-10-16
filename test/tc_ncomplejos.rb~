require "../lib/ncomplejos.rb"
require "test/unit"

class Test_Ncomplejos < Test::Unit::TestCase
	def test
		# Igualdad
		assert_equal("(1, 2i)", Ncomplejo.new(1, 2).to_s)

		# Suma		
		assert_equal("(2, 4i)", (Ncomplejo.new(1, 2) + Ncomplejo.new(1, 2)).to_s)

		# Resta
		assert_equal("(1, 2i)", (Ncomplejo.new(2, 4) - Ncomplejo.new(1, 2)).to_s)

		# Multiplicacion
		assert_not_equal("(-3, 3i)", (Ncomplejo.new(1, 2) * Ncomplejo.new(1, 2)).to_s)

		# Division
		assert_equal("(-2, 3i)", (Ncomplejo.new(4, 8) / Ncomplejo.new(2, -2)).to_s)

		# Producto escalar
		assert_equal("(10, 20i)", (Ncomplejo.new(1, 2) & 10))
	end
end
