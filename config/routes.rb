Rails.application.routes.draw do
  get 'subscribers/index'
  # config/routes.rb
  resources :subscribers
  root 'subscribers#index'

  get 'subscribers/sub'
  post 'sub', to: 'subscribers#sub', as: :sub

end
