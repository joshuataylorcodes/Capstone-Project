Rails.application.routes.draw do
  #song routes
  get "/songs" => "songs#index"
  get "/songs/:id" => "songs#show"
  post "/songs" => "songs#create"
  patch "songs/:id" => "songs#update"
  delete "songs/:id" => "songs#destroy"

  #user routes
  post "/users" => "users#create"

  #sessions routes
  post "/sessions" => "sessions#create"

  #set_list routes
  post "/set_lists" => "set_lists#create"

  get "set_lists/:id" => "set_lists#show"

  get "set_lists" => "set_lists#index"
end
