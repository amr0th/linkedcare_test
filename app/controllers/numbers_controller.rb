class NumbersController < ApplicationController
	
	def index
	end

	def submit

		number_test = BusinessLogic::NumberTest.new({ values: [
																														['linked', params[:numbers][:first_number].to_i], 
																												   	['care', params[:numbers][:second_number].to_i]
																								          ]
																								})
		@has_stuff = number_test.perform
		render "index"
	end

end
