Rails.application.routes.draw do
  get 'stock/index'

  resources :account

  root 'stock#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
