Rails.application.routes.draw do
  root          to: "home#index"

  resources :movies, only: [:show, :new, :create, :edit, :update]do
    patch :release, on: :member
  end
  resources :directors, only: [:show, :new, :create, :edit, :update]
  resources :genres, only: [:show, :new, :create, :edit, :update]  

  get '/directors', to: 'home#list_directors'
  get '/genres', to: 'home#list_genres'
end
