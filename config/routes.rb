Rails.application.routes.draw do
  
  resources :plots
  resources :farmers
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
