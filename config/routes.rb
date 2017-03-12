Rails.application.routes.draw do
  concern :actionable do
    get :action, on: :member
  end
  resources :posts, :concerns => :actionable do
    member do
      get 'like/:user_id', to: 'posts#like', as: :like
    end
  end
  resources :comments
  resources :users
  root 'index#index'
end
