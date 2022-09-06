Rails.application.routes.draw do
  resources :users
  post '/auth/login', to: 'authentication#login'
  resources :product_categories, only: %i[index show], path: 'categories', param: :name
  resources :products, only: %i[index show]
end
