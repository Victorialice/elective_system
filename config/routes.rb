Rails.application.routes.draw do
  get 'my' => 'my#index'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  post 'courses' => 'courses#create'
  get 'courses/new'
  get '/courses' =>  'courses#index'
  get 'courses/:id' => 'courses#show'
  # You can have the root of your site routed with "root"

  get 'store/index'

  #get '/container/create' => 'container#create'

   post 'user' => 'user#create'
  get 'user/new'
  get '/user' => 'user#index'
  get 'user/:id' => 'user#show'


   post 'appointment' => 'appointment#create'
  get 'appointment/new'
  get 'appointment/index'
  delete 'appointment' => 'appointment#destroy'



  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destory
  end

  get "sessions/create"
  get "sessions/destroy"

  root 'store#index', as: 'store'

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
