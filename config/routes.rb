Rails.application.routes.draw do
  get 'home/index'

  get 'static_pages/home'

  root 'home#index'


  devise_for :users, controllers: { session: 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks", :registrations => "users/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do 
    resources :comments
  end
  resources :comments
  resources :users
  get 'search' => 'items#search'
  get 'admins/users' => 'admins#users_index'
  get 'admins/items' => 'admins#items_index'
  post 'admins/item/approve' => 'admins#approve_item'
  post 'admins/item/unapprove' => 'admins#unapprove_item'
  post 'rate' => 'items#rate'

end
	