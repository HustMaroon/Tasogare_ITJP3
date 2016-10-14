Rails.application.routes.draw do
  get 'home/index'

  get 'static_pages/home'

  root 'home#index'

  devise_for :users, controllers: { session: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	