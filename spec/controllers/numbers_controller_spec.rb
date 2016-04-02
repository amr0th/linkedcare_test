require 'rails_helper'

RSpec.describe NumbersController, type: :controller do

	it "Show the index view - HTTP 200" do
  	get :index
  	expect(response).to render_template("index")
	end

	it "Test the post for two numbers" do
  	put :submit, numbers: { first_number: 5, second_number: 3 }
  	expect(response).to render_template("index")
	end

end
