class BusinessLogic::NumberTest
	
	#Usage:
	# number_test = BusinessLogic::NumberTest.new({values: [['linked', 3], ['care',2]]})
	#
	# Elements being the the two (or more) numbers provided by user and the text to be showed
	# min value and max value can also be provided but there are default values
	#
	# number_test.perform 
	# This method returns an array with the processed values. The multiples are replaced with the text 
	# provided on the initialization

	def initialize(options, min_value = 1, max_value = 100)
		@values = options[:values]
		@min_value = min_value
		@max_value = max_value
	end

	def perform
		
		results_arr = []

		(@min_value..@max_value).map {|i|

			item_text = check_values(i)
			results_arr << text_or_value(item_text, i)
		}

		results_arr
	end
	
	
	private

	def text_or_value(item_text, item)
		(item_text.present? ? item_text : item)
	end

	def check_values(item)
		return_text = ''
		
		@values.each do |text, value|
				return_text += text if divisible_by?(item, value)
		end

		return_text
	end
	
	def divisible_by?(num, dem)
		(num % dem).zero?
	end

end