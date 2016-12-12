Rails.application.routes.draw do
  
  root 'default#index'
  get '/asignacion/:id', to: 'asignations#asignacion'

  get '/ver', to: 'retiros#ver'
  get '/retiro/:id', to: 'retiros#retiro'
  get '/retirar/:id', to: 'retiros#retirar'

  get '/empresas', to: 'companies#empresas'
  get '/precios', to: 'companies#precio_rutas'
  get '/precio', to: 'companies#precio_chofer'
  get '/predios', to: 'companies#clientexpredio'

  get '/view', to: 'retiros#ver_retiros'
  get '/send', to: 'retiros#enviar_retiros'
  get '/mostrar', to: 'retiros#mostrar_prefactura'
  get '/prefactura', to: 'retiros#prefactura'
  get '/buscar', to: 'retiros#mostrar_planilla'
  get '/planillas', to: 'retiros#planilla'

  get '/enviar', to: 'retiros#enviar'
  get '/pendiente', to: 'retiros#retiros_pendientes'

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