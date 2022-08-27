Rails.application.routes.draw do
  resources :product_categories, only: %i[index show], path: 'categories', param: :name
  resources :products, only: %i[index show]
end
