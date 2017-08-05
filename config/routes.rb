Rails.application.routes.draw do
  root to: 'pages#home'
  resources :meals
  get '/random-meal', to: 'meals#random_meal', as: 'random_meal'
end
