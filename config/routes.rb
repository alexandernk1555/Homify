Rails.application.routes.draw do
  get 'viewings/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/components_alex' => 'pages#components_alex'
  # Defines the root path route ("/")
  # root "articles#index"

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

  patch "viewings/:id/accept" => "viewings#accept_booking", as: "accept_booking"
  patch "viewings/:id/decline" => "viewings#decline_booking", as: "decline_booking"

  get "julia", to: "pages#julia"
  get "julia/:id", to: "pages#julia"
  get '/alex/' => 'pages#alex'
  # Defines the root path route ("/")
  get "/alexander/", to: "pages#alexander"
  get '/show/' => 'pages#show'
  get 'profile/' => 'pages#profile'
end
