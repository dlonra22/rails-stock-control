Rails.application.routes.draw do
  resources :items

  resources :users, only:[:show] do
      resources :transcations, only: [:index, :new, :show, :create, :destroy]
  end

  resources :users

end
