Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # devise_for :users
  root to: 'pages#home'
  resources :courses, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show, :edit, :update, :destroy ]
  resources :pages, only: [ :index ]
  get 'profile', to: 'pages#profile'
end
