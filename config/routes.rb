Rails.application.routes.draw do
  resources :items
  resources :users
  get "/login" => "sessions#login"
  post"/login" => "sessions#create"
  get "/register" =>"users#new"
  delete "/logout" =>"sessions#destroy"
  resources :users, only:[:show] do
      resources :transcations, only: [:index, :new, :show, :create, :destroy]
  end
  resources :transactions, only: [:index] #temporary to get basic server running. 
  root to: 'sessions#login'
end
