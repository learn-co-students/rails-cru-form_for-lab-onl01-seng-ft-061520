Rails.application.routes.draw do
  resources :artists, only: %i[index show new create edit update]
  resources :genres, only: %i[index show new create edit update]
  resources :songs, only: %i[index show new create edit update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
