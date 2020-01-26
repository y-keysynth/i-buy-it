Rails.application.routes.draw do
  resources :transacts
  root 'items#index'

  resources :items
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    # get "user/:id", :to => "users/registrations#detail"
    get "user/:id", :to => "items#index"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

end
