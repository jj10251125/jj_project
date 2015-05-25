Rails.application.routes.draw do
  get 'user/signup'
  get '/:category' => 'jshoes#shoes_category'
 # get 'jshoes/main'
  get 'jshoes/main'
  root 'jshoes#main'
  get 'user/signup_complete_page'
  post 'user/signup_complete'
  get 'jshoes/shoes_category'
  get 'user/login'
  post 'user/login_complete'
  get 'user/logout_complete'
  get 'jshoes/show/:id' => 'jshoes#show'
  get 'jshoes/review_show/:id' => 'jshoes#review_show'
  get 'user/my_cart/:id' => 'user#my_cart'
  get 'jshoes/write'
  post 'jshoes/write_complete'
  get 'jshoes/edit/:id' => 'jshoes#edit'
  get 'jshoes/edit_review/:id' => 'jshoes#edit_review'
  post 'jshoes/edit_complete'
  post 'jshoes/edit_review_complete'
  get 'jshoes/delete_complete/:id' => 'jshoes#delete_complete'
  get 'jshoes/delete_review_complete/:id' => 'jshoes#delete_review_complete'
  get 'jshoes/review'
  get 'user/review_write'
  post 'user/review_complete'
  post 'jshoes/review_comment_complete'
  get 'jshoes/delete_comment_complete/:id' => 'jshoes#delete_comment_complete'
  get 'user/my_cart'
  post 'user/push_cart'
  get 'user/my_info'
  post 'user/edit_info'
  get 'user/order_complete'
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
