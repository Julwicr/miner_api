Rails.application.routes.draw do
  devise_for :users
  resources :product_categories, only: %i[index show], path: 'categories', param: :name
  resources :products, only: %i[index show]
end
