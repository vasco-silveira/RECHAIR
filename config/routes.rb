Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  root to: 'pages#home'
  resources :courses, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [ :index, :show, :edit, :update, :destroy ]
  resources :pages, only: [ :index, :edit, :update ]
  get 'profile', to: 'pages#profile'
  resources :chatrooms, only: :show
end
