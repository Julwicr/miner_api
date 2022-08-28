Rails.application.routes.draw do
  post '/auth', to: 'sessions#auth'
  resources :product_categories, only: %i[index show], path: 'categories', param: :name
  resources :products, only: %i[index show]
  get '/price', to: 'products#price'
end
