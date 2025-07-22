Rails.application.routes.draw do
  root to: "dashboard#index"

  get "/app", to: "dashboard#index"
  get "/app/*params", to: "dashboard#index"

  resources :team_users
  resources :accounts
  resources :users
  resources :teams
  resources :feedbacks
  resources :account_users, only: [ :create, :destroy ]
  resources :team_users, only: [ :create, :destroy ]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
