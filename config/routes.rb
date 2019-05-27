Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'users#new'
  resource :user

  namespace :api do
    namespace :v1 do
			get 'test_takers' => 'users#test_takers'
    end
  end

end