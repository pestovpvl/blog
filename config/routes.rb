Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'


  resources :articles

  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
