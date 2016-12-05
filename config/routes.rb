Rails.application.routes.draw do
  
  root 'default#index'
  get '/asignacion/:id', to: 'asignations#asignacion'

  get '/ver', to: 'retiros#ver'
  get '/retiro/:id', to: 'retiros#retiro'
  get '/retirar/:id', to: 'retiros#retirar'

  get '/view', to: 'retiros#ver_retiros'
  get '/send', to: 'retiros#enviar_retiros'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :sessions
  resources :num_contenedors
  resources :asignations
  resources :cliente_navieras

  resources :navieras do
    resources :cliente_navieras
  end
  
  resources :planta
  resources :routes
  resources :predios

  resources :companies do
    resources :navieras
  end

  resources :retiro_contenedors
  resources :retiros
  resources :navieras
  resources :implements
  resources :trucks
  resources :drivers
  resources :users
end