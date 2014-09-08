class Fizzbuzz

	# default: 
	# iterate 1 to 100 
	# with fizz where divisible by 3, buzz where divisible by 5, 
	# fizzbuzz where divisible by both, or the number if divisible by neither
	def iterate (options={})
		#set option defaults
		defaults = {
			:start_range => 1,
			:end_range => 100,
			:denominator_fizz => 3,
			:denominator_buzz => 5
		}

		#set options from options parameter and use default where not found
		options = defaults.merge(options)

		vals = []
		#iterate range
		(options[:start_range]..options[:end_range]).each do |n|
			#divisible by both denominators
			if n % options[:denominator_fizz] == 0 && n % options[:denominator_buzz]  == 0
				vals << 'fizzbuzz'
			#divisible by only one denominator
			elsif n % options[:denominator_buzz] == 0 
				vals << 'buzz'
			elsif n % options[:denominator_fizz]  == 0
				vals << 'fizz'
			#divisible by neither denomiator
			else
				vals << n.to_s
			end
		end

		puts vals

		vals
	end
end