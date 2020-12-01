Rails.application.routes.draw do
  resources :users
  resources :categories
  resources :cards
  post '/login', to: 'auth#create'
end
