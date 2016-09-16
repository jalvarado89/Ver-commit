Rails.application.routes.draw do
  resources :trucks
  resources :drivers
  resources :users
  root 'default#index'
end