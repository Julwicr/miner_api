Rails.application.routes.draw do

  resources :categories, only: %i[index]
  resources :products, only: %i[index]

end
