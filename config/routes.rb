Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spots, only: %i[index show new create destroy] do
    resources :reviews, only: :create
    resources :bookmarks, only: %i[destroy create]
    resources :spot_moves, only: %i[create]
  end

  resources :moves, only: :show
end
