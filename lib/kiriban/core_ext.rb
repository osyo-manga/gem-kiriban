require_relative "./core"


class Object
	include Kiriban

	def to_kiriban_array
		to_s.to_kiriban_array
	end
end

class String
	def to_kiriban_array
		split //
	end
end

class Array
	def to_kiriban_array
		self
	end
end
