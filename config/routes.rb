Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "greetings#index"
  get '/drugs/newdrug', to: 'drugs#newdrug'
  get '/drugdistributionlogs/distribute/:id', to: 'drugdistributionlogs#distribute'
  resources :greetings, only: [:index]
  resources :cheeses, only: [:index, :create, :show]
  resources :drugunits
  resources :drugs 
  resources :drugdistributionlogs
  resources :departments
end
