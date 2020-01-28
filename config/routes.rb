Rails.application.routes.draw do
  root 'items#index'
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  resources :items
  
  
  devise_scope :user do
    # get "user/:id", :to => "users/registrations#detail"
    get "user/:id", :to => "items#index"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :transacts do
    member do
      patch "transacts/update"

    end
  end  

end
