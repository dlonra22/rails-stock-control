Rails.application.routes.draw do
  resources :items

  resources :users, only:[:show] do
      resources :transcations, only: [:index, :new, :show, :create, :destroy]
  end

  resources :users
  resources :transactions, only: [:index] #temporary to get basic server running. 
  get "/login" => "sessions#login"
  get "/new" => "sessions#new"
  post"/login" => "session#create"
end
