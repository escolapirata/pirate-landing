
Rails.application.routes.draw do
  resources :blogposts
  resources :certificates
  resources :paths
  get 'sessions/create'

  get 'sessions/destroy'
  
  get 'tags/:tag', to: 'activities#index', as: :tag
  get 'tags', to: 'tags#index'
  resources :blogposts
  resources :entities
  resources :activities
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
  post 'beta_testers/', to: 'beta_testers#create'
  get 'pages/:name', to: 'pages#search'
  
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end


FacebookAuthExample::Application.routes.draw do

  resources :certificates
 
  resources :paths
 
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


