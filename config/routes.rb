Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"

  get "/positions" => "positions#index"
  get "/positions/:id" => "positions#show"
  post "/positions" => "positions#create"
  patch "/positions/:id" => "positions#update"
  delete "/positions/:id" => "positions#destroy"
end
