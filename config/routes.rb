Rails.application.routes.draw do

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, :controllers => { registrations: 'registrations'}

  resources :shape_generator
  resources :categories
  resources :posts
  resources :comments
  get 'shape_generator/index', to: 'shape#index'
  root 'homes#index'
  # get 'categories/index' => 'categories#index', as: 'categories'
  # get 'categories/show/:id'=> 'categories#show', as: 'show_category'
  # get 'categories/create'
  # get 'categories/new' => 'categories#new', as: 'new_category'
  # get 'categories/edit'
  # get 'posts/index' => 'posts#index', as: 'posts'
  get 'posts/:id' => 'post#show', as: 'posting_path'
  # get 'posts/new'
  # get 'posts/create'
  post 'posts' => 'posts#create'
  post 'categories/index' => 'categories#create'
  post 'categories/:id' => 'categories#destroy'
  post 'posts/:id' => 'posts#destroy'
  post 'posts/:id/comments' => 'comments#create', as: 'comments_create'
  post 'comments/:id' => 'comments#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
