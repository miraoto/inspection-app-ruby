Rails.application.routes.draw do
  resources :posts do
    member do
      get 'like/:user_id', to: 'posts#like', as: :like
    end
  end
  resources :comments
  resources :users
  root 'index#index'
end
