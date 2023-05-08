Rails.application.routes.draw do
  get "/songs" => "songs#index"
end
