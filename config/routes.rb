Rails.application.routes.draw do
  resources :items
  resources :transcations
  resources :users, only:[:show] do
      resources :transcations, only: [:index, :new, :show]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
