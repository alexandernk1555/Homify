Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  # get '/components_alex' => 'pages#components_alex'
  # Defines the root path route ("/")
  # root "articles#index"

  get "/jorgen/", to: 'pages#jorgen'
=======
  get '/alex/' => 'pages#alex'
  # Defines the root path route ("/")
  get "/alexander/", to: "pages#alexander"
>>>>>>> 5db9ab003ce3fa8182d83ad0180da65ddce10e6a
end
