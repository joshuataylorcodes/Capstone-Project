Rails.application.routes.draw do
  get "/songs" => "songs#index"

  get "/songs/:id" => "songs#show"

  post "/songs" => "song#create"

  patch "songs/:id" => "song#update"
end
