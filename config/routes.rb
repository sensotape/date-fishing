Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :experiences do
    resources :nibbles, only: [:create, :update, :destroy]
  end
  resources :users, only: [:edit, :update, :show, :destroy]
  get 'inbox', to: 'conversations#inbox', as: :inbox
  get 'inbox/:id', to: 'conversations#show', as: :conversation
  post 'inbox/:id/messages', to: 'messages#create', as: :new_message

  mount ActionCable.server => "/cable"

  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
