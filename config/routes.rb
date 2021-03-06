Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # get "hello/:name" => "example#hello"

  root to: "example#hello"


  ## Registration Routes
  get "signup", to: "registrations#new"
  post "signup", to: "registrations#create"

  ## Session Routes
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"

  ## Posts Routes
  get "posts", to: "posts#index"
  get "posts/new", to: "posts#new"
  get "posts/:id/edit", to: "posts#edit", as: "post_edit"
  post "posts", to: "posts#create"
  post "posts/:id/update", to: "posts#update" , as: "post_update"
  get "posts/:id", to: "posts#show", as: "post"
  get "posts/:id/edit", to: "posts#edit", as: "post_edit"
  put "posts/:id", to: "posts#update"
  delete "posts/:id", to: "posts#destroy"

  get "tag/:name", to: "tags#tagged"

  post "posts/:id/comments", to: "comments#create", as: "comments"

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
