Rails.application.routes.draw do
  root 'store#index', as: 'store_index'
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  get "about", to: "pages#about"
end
