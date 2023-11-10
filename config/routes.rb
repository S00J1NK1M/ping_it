Rails.application.routes.draw do
  devise_for :users
  root to: "pingpong_tables#index"
  get "my_profile", to: "pages#profile"
  get "playgame", to: "pages#playgame"
  get "splash", to: "pages#splash"
  get "my_profile/more", to: "pages#more"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pingpong_tables, only: %i[index show create] do
    member do
      get "play"
      get "read"
      patch "cancel"
    end

    resources :favorites, only: %i[create]
    resources :reservations, only: %i[show new create]
  end

  resources :users, only: [:show] do
    get 'favorite_tables', on: :member
  end

  resources :favorites, only: %i[show destroy]

  resources :reservations do
    member do
      patch "cancel"
    end
  end

  resources :matches do
    member do
      patch "join"
    end
  end
end
