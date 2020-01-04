Rails.application.routes.draw do
  
  resources :plot_addresses
  resources :plots
  resources :farmer_addresses
  resources :farmers
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
