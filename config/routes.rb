Rails.application.routes.draw do
  
  resources :logistics
  resources :markets
  resources :harvest_procedures
  resources :illness_controls
  resources :watering_managements
  resources :fertilize_procedures
  resources :policies
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
