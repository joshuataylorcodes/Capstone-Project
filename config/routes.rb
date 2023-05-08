Rails.application.routes.draw do
  get "/songs" => "songs#index"

  post "/songs" => "song#create"
end
