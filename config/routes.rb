Rails.application.routes.draw do
  #get "todos", to: "todos#index"
  #post "todos/create", to: "todos#create"
  #get "todos/:id", to: "todos#show"
  resources :todos
  get "users", to: "users#index"
  get "users/create", to:"users#create"
  
end