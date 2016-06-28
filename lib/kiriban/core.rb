require_relative "./refinements"

using Kiriban

module Kiriban
	def to_kiriban_array
		to_a
	end

	def zeroban? top = 1
		to_kiriban_array.drop(top).all?{ |it| it.to_i == 0 }
	end

	def zoroban?
		to_kiriban_array.uniq.size == 1
	end

	def renban?
		to_kiriban_array.map(&:to_i).each_cons(2).map{ |a, b| b - a }.zoroban? && !to_kiriban_array.empty?
	end

	def miraban?
		to_kiriban_array == to_kiriban_array.reverse
	end

	def kiriban?
		zeroban? || zoroban? || renban? || miraban?
	end
end

