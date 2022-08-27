Rails.application.routes.draw do
  resources :product_categories, only: %i[index], path: 'categories'
  resources :products, only: %i[index]
end
