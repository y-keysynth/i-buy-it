Rails.application.routes.draw do
  root 'items#index'
  
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

  resources :items do
    collection do
      get :show_myself
      get :show_close_myself
      get :show_sell
      get :show_watch_list
    end
  end

  post   '/like/:item_id' => 'likes#like',   as: 'like'
  delete '/like/:item_id' => 'likes#unlike', as: 'unlike'

end
