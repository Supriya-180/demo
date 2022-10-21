Rails.application.routes.draw do
  get "/homes", to: "homes#index"
  #root "/homes#index"
  # post "/homes/new", to: "homes#new"
  # get "/homes/:id", to: "homes#show"
   resources :homes
   resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
