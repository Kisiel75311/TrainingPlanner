Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :favourites
  resources :trainings
  resources :exercises
  resources :plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
