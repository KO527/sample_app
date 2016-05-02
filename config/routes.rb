Rails.application.routes.draw do

  devise_for :users

  resources :users
  #need to reference login page
  #need to build profile settings page for buyer and seller

  resources :categories
  resources :preferences


  root to: 'static#home'
  get 'signout' => 'static#signout'	 	  
  #need to reference preferences model  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
