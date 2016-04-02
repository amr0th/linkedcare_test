Rails.application.routes.draw do

  root 'numbers#index'

  resources :numbers, :only => [:index] do
    collection do
      put 'submit'
    end
  end

end