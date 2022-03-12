Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  post "/booking/destroy", to: "bookings#destroy", as: "booking_destroy"
  delete "/sessions/destroy", to: "devise/sessions#destroy"
  root to: 'pages#home'
  resources :courses, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create ]
    resources :chatrooms, only: [ :show, :new, :create ] do
      resources :messages, only: :create
    end
  end
  resources :bookings, only: [ :index, :show, :edit, :update, :destroy ]
  resources :pages, only: [ :index, :edit, :update ]
  get 'profile', to: 'pages#profile'
  get 'admin', to: 'pages#admin'
  resources :chatrooms, only: [ :show, :new, :create ] do
    resources :messages, only: :create
  end
end
