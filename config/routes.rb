
Rails.application.routes.draw do
  resources :blogposts
  resources :certificates
  resources :paths
  get 'sessions/create'

  get 'sessions/destroy'
  
  get 'tags/:tag', to: 'activities#index', as: :tag
  get 'tags', to: 'tags#index'

  resources :entities
  resources :activities
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  post 'beta_testers/', to: 'beta_testers#create'
  get 'pages/:name', to: 'pages#search'

  get 'auth/:provider/callback', to: 'sessions#create' 
 
  get 'auth/failure', to: redirect('/')
 
  get 'signout', to: 'sessions#destroy', as: 'signout'
 
  resources :sessions, only: [:create, :destroy]
    
  post 'preregister', to: 'users#preregister'
  
  get 'preregister', to: 'users#newPreRegister'
  
  post 'register', to: 'users#register'
  
  get 'register', to: 'users#newRegister'
  
  get 'users', :to => 'users#show', :as => :users
  



end


