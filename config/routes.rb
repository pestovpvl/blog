Rails.application.routes.draw do

  devise_for :user
  get'terms' => 'pages#terms'
  get'about' => 'pages#about'
  resources :articles do
    resources :comments
  end

  resources :contacts, only: [:new, :create], path_names: { :new => '' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
