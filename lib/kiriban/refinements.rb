
module Kiriban
	refine Object do
		def to_kiriban_array
			to_s.to_kiriban_array
		end
	end

	refine String do
		def to_kiriban_array
			split //
		end
	end

	refine Array do
		def to_kiriban_array
			self
		end
	end
end

require_relative "./core"


module Kiriban
	refine Object do
		include Kiriban
	end
end

