Rails.application.routes.draw do
  resources :cliente_navieras
  resources :navieras
  resources :planta
  resources :routes
  resources :predios
  resources :companies
  resources :implements
  resources :trucks
  resources :drivers
  resources :users
  root 'default#index'
end