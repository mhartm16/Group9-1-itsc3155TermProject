Rails.application.routes.draw do
  get 'stock/index'

  resources :users do
    resources :feedbacks
  end

  root 'stock#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
