Rails.application.routes.draw do
  resources :orders, only: [:new, :create]

  get 'store/index'

  namespace :admin do
    resources :products
    resources :orders, only: [:index, :edit, :destroy]
    root 'orders#index'
  end

  root to: 'store#index', as: 'store'

  get 'search' => 'searches#index'

  resources :carts, only: [:update, :show, :destroy]
end
