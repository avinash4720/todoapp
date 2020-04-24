Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #get "todos/:id", to: "todos#show"
  get "/" => "home#index"
  resources :todos
  #get "users/login", to: "users#login"
  #post "users/create", to:"users#create"
  resources :users
  
end