Rails.application.routes.draw do
  get 'conversations/inbox'
  devise_for :users
  root to: 'pages#home'
  resources :experiences do
    resources :nibbles, only: [:create, :destroy]
  end
  resources :users, only: [:edit, :update, :show, :destroy]
  get 'inbox', to: 'conversations#inbox', as: :inbox
end
