Whatnow::Application.routes.draw do


  resources :users do
    resources :triggers do
    end
  end

resources :authentications


resources :sessions, only: [:new, :create, :destroy]
# match '/triggers', to: 'triggers#index', via 'get'
# match '/triggers/maindisplay', to: 'triggers#maindisplay', via 'get'
# match '/triggers/new', to: 'triggers#new', via 'get'
# match '/users/new', to: 'users#new', via 'get'
# match '/authentications/new', to: 'authentications#new', via 'get'
# match '/triggers/:id', to: 'triggers#show', via 'get'
# match '/triggers', to: 'triggers#create', via 'post'
# match '/authentications', to: 'authentications#create', via 'post'
# match '/users', to: 'users#create', via 'post'
# match '/triggers/:id', to: 'triggers#destroy', via 'delete'
# match '/authentications/:id', to: 'authentications#destroy', via 'delete'

 root to: 'triggers#home'







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
