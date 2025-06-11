Rails.application.routes.draw do
  devise_for :users
  root 'home#top'

  resources :posts, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resources :users, only: [:show]
end
