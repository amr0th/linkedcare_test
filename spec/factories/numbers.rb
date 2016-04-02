FactoryGirl.define do
	
  factory :numbers, class: BusinessLogic::NumberTest do
    skip_create

   	initialize_with do
      new(values: [['linked', 3], ['care',2]])
    end

  end

end
