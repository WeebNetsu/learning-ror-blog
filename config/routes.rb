Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :posts

  get '/u/:id', to: 'users#profile', as: 'user'

  # to make home page available from /home
  #   get 'home', to: 'pages#home'
  #   get 'pages/about'
  get 'about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
