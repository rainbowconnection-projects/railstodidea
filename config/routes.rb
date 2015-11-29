Rails.application.routes.draw do
  root 'home#index'

  devise_for :admin
  resources :projects
  resources :testimonials
  resources :categories
  resources :products
  resources :events
  #resources :articles
  resources :jobs
  get 'products' => 'products#index'
  #get 'products/:name' => 'products#show'

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

  namespace :admin do
    resources :articles, :products, :events, :projects, :testimonials
  end

end
