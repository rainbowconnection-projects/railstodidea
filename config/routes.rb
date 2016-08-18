Rails.application.routes.draw do
  resources :people
  resources :teams
  root 'home#index'

  devise_for :admin
  resources :projects
  resources :testimonials
  resources :categories
  resources :products, except: ['show'] do
   get 'products/:name' => 'products#show'
end
resources :events
resources :articles
resources :jobs
resources :tags

get 'products' => 'products#index'
#get 'products/:link/show' => 'products#show'
get 'products/:name' => 'products#show'


get 'hour_of_code' => 'hoc#index'
get 'rails_training' => 'rails_training#index'
get 'our_story' => 'story#index'
get 'contact', to: 'contacts#new', as: 'contacts'
post 'contact', to: 'contacts#create'

get 'admin' => 'admin#index'
get 'admin/auth' => 'admin#login'
get 'admin/users' => 'admin#users'


namespace :admin do
  resources :articles, :products, :events,
            :projects, :testimonials, :tags,
            :categories, :teams, :people, :galleries,
            :photos, :event_galleries, :event_photos, :founders, :stories, :project_photos, :project_galleries
end
end
