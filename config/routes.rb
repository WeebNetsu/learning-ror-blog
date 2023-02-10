Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # to make home page available from /home
  #   get 'home', to: 'pages#home'
  #   get 'pages/about'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
