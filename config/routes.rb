Rails.application.routes.draw do
  devise_for :users
  root to: "pingpong_tables#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pingpong_tables, only: %i[index show create] do
    member do
      patch "taken"
      get "read"
    end
    resources :reservations, only: %i[show new create]
  end

  resources :reservations, only: %i[index update]
  resources :matches
end
