Rails.application.routes.draw do
  get 'subscribers/index'
  # config/routes.rb
  resources :subscribers
  root 'subscribers#index'
  
end
