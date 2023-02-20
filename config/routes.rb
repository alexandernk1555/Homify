Rails.application.routes.draw do
  get 'viewings/new'
  devise_for :users
  
  root to: "pages#home"

  resources :listings, only: [:index, :show, :new, :create, :edit, :update] do
    resources :matches, only: [:create]
  end

  resources :matches, only: [:show] do
    resources :viewings, only: [:new, :create]
    resources :messages, only: :create
  end

  resources :viewings, only: [:index, :destroy]

  resources :searches, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create]
  resources :matches, only: [:index, :show, :destroy]
  get "chats", to: 'matches#chats', as: :chats

  patch "viewings/:id/accept" => "viewings#accept_booking", as: "accept_booking"
  patch "viewings/:id/decline" => "viewings#decline_booking", as: "decline_booking"

  # Defines the root path route ("/")
  get '/show/' => 'pages#show'
  get 'profile/' => 'pages#profile'
end
