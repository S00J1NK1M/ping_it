Rails.application.routes.draw do
  devise_for :users
  root to: "pingpong_tables#index"
  get "my_profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pingpong_tables, only: %i[index show create] do
    member do
      get "play"
      get "read"
    end

    resources :favorites, only: %i[create]
    resources :reservations, only: %i[show new create]
  end

  resources :favorites, only: %i[destroy]

  resources :reservations, only: %i[index update] do
    member do
      patch "cancel"
    end
  end
  resources :matches
end
