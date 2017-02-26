Rails.application.routes.draw do
  resources :posts
  resources :comments
  resources :users
  root 'index#index'
end
