Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/session',
               registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
  
  resources :product_categories, only: %i[index show], path: 'categories', param: :name
  resources :products, only: %i[index show]
end
