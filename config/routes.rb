Rails.application.routes.draw do
  
  resources :plots
  resources :certificates
  resources :farmers
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :organizations
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
