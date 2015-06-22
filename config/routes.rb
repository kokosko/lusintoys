Rails.application.routes.draw do
  resources :orders, only: [:new, :create]
  resources :carts, only: [:update, :show, :destroy]

  root to: 'store#index', as: 'store'

  namespace :admin do
    resources :products
    resources :orders, only: [:index, :edit, :destroy]
    root 'orders#index'
  end

  get 'store/index'
  get 'search' => 'searches#index'
end
