Rails.application.routes.draw do


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  devise_for :admin
  resources :projects
  resources :testimonials
  resources :categories
  resources :products
  resources :events
  resources :articles
  resources :jobs
  get 'products' => 'products#index'

  get 'hour_of_code' => 'hoc#index'

  get 'rails_training' => 'rails_training#index'

  get 'blog' => 'blog#index'
  get 'blog/:id' => 'blog#show'
  get 'blog/new' => 'blog#new'

  get 'our_story' => 'story#index'

  get 'contact' => 'contact#index'

  get 'admin' => 'admin#index'
  get 'admin/auth' => 'admin#login'
  get 'admin/users' => 'admin#users'

  get 'admin/articles' => 'admin#articles'
  get 'admin/articles/new' => 'admin#new_article'
  get 'admin/articles/:id/edit' => 'admin#edit_article'

  get 'admin/products' => 'admin#products'
  get 'admin/products/new' => 'admin#new_product'
  get 'admin/products/:id/edit' => 'admin#edit_product'

  get 'admin/events' => 'admin#events'
  get 'admin/events/new' => 'admin#new_event'
  get 'admin/events/:id/edit' => 'admin#edit_event'

  get 'admin/testimonials' => 'admin#testimonials'
  get 'admin/testimonials/new' => 'admin#new_testimonial'
  get 'admin/testimonials/:id/edit' => 'admin#edit_testimonial'

  get 'admin/projects' => 'admin#projects'
  get 'admin/projects/new' => 'admin#new_project'
  get 'admin/projects/:id/edit' => 'admin#edit_project'

  get 'admin/photos' => 'admin#photos'


=begin
  namespace :admin do
    resources :articles
    resources :products
    resources :events
    resources :
  end
=end


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: products.id)
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
