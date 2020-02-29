Rails.application.routes.draw do
  root 'mangas#index'
  resources :mangas, only: %i(index)
end
