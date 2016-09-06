Rails.application.routes.draw do

  root "events#index"

  get "logout" => "sessions#destroy", as: "logout"
  get "login" => "sessions#new", as: "login"
  post "login" => "sessions#create", as: "sessions"
  get "signup" => "users#new", as: "signup"

  resources :users
  resources :events do 
    member do
      post "respond"
      post "admin_respond"
    end
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
