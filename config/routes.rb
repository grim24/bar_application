Rails.application.routes.draw do


  get 'bar_to_json/new'

  get 'bar_to_json/create'

  get 'bar_to_json/update'

  get 'bar_to_json/edit'

  get 'bar_to_json/destroy'

  get 'bar_to_json/show'

  get 'bar_to_json/index'

  get 'sessions/new'

  get 'signup' => 'users#new'

  root 'static_pages#home'

  get 'help' =>  'static_pages#help'
  get 'json' => 'static_pages#json'
  get 'about' =>  'static_pages#about'
  get 'contact' =>  'static_pages#contact'

  get 'new_bar' => 'bars#new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :users
  resources :bars 
  resources :bar_to_json
  resources :deals,     only: [:create, :destroy] 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
