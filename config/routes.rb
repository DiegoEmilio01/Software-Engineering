Rails.application.routes.draw do
  ### RUTAS CRUD SWIPERS ###
  devise_for :swipers, controllers: {sessions: 'swipers/sessions', registrations: 'swipers/registrations'}
  #Rutas adicionales de swipers
  devise_scope :swiper do
    get 'swiper_root' => 'swipers/registrations#index', as: 'swiper_root'
    get 'swipers' => 'swipers/registrations#index', as: 'lista_swipers'
    get 'swipers/:id' => 'swipers/registrations#show', as: 'swiper'
  end

  ### RUTAS CRUD ADMIN ###
  devise_for :admins, controllers: {sessions: 'admins/sessions', registrations: 'admins/registrations'}
  # Rutas adicionales de admins
  devise_scope :admin do
    get 'admin_root' => 'admins/registrations#index', as: 'admin_root'
    get 'admins' => 'admins/registrations#index', as: 'lista_admins'
    get 'admins/:id', to: 'admins/registrations#show', as: 'admin'
  end

  ### RUTA LISTA DE CRUDS (HOME)###
  get '/', to: 'cruds#index', as: 'lista_cruds'

  ### RUTAS CRUD COMUNA ###
  #CREATE
  get 'comunas/new', to: 'comunas#new'
  post 'comunas', to: 'comunas#create'
  #READ
  get 'comunas', to: 'comunas#index', as: 'lista_comunas'
  get 'comunas/:id', to: 'comunas#show', as: 'comuna'
  #UPDATE
  get 'comunas/:id/edit', to: 'comunas#edit', as: 'edit_comuna'
  patch 'comunas/:id', to: 'comunas#update'
  #DELETE
  delete 'comunas/:id', to: 'comunas#destroy'

  ### RUTAS CRUD COMENTARIO ###
  #CREATE
  get 'comentarios/new', to: 'comentarios#new'
  post 'comentarios', to: 'comentarios#create'
  #READ
  get 'comentarios', to: 'comentarios#index', as: 'lista_comentarios'
  get 'comentarios/:id', to: 'comentarios#show', as: 'comentario'
  #UPDATE
  get 'comentarios/:id/edit', to: 'comentarios#edit', as: 'edit_comentario'
  patch 'comentarios/:id', to: 'comentarios#update'
  #DELETE
  delete 'comentarios/:id', to: 'comentarios#destroy'

  ### RUTAS CRUD GUSTO ###
  # CREATE
  get 'gustos/new', to:'gustos#new'
  post 'gustos', to: 'gustos#create'
  # READ
  get 'gustos', to: 'gustos#index'
  get 'gustos/:id', to: 'gustos#show', as:'gusto'
  # UPDATE
  get 'gustos/:id/edit', to: 'gustos#edit', as: 'edit_gusto'
  patch 'gustos/:id', to: 'gustos#update'
  # DELETE
  delete 'gustos/:id', to: 'gustos#destroy'

  ### RUTAS CRUD RESTAURANTE ###
  # CREATE
  get 'restaurantes/new', to:'restaurantes#new'
  post 'restaurantes', to: 'restaurantes#create'
  # READ
  get 'restaurantes', to: 'restaurantes#index', as: 'lista_restaurantes'
  get 'restaurantes/:id', to: 'restaurantes#show', as:'restaurante'
  # UPDATE
  get 'restaurantes/:id/edit', to: 'restaurantes#edit', as: 'edit_restaurante'
  patch 'restaurantes/:id', to: 'restaurantes#update'
  # DELETE
  delete 'restaurantes/:id', to: 'restaurantes#destroy'
  delete 'restaurantes/imagen/:id_i/:id_r', to: 'restaurantes#delete_imagen', as: 'delete_imagen_restaurante'
end