# frozen_string_literal: true

Rails.application.routes.draw do
  get "/users", to: "users#index", as: 'user'
  get "/posts/new", to: "posts#new", as: 'posts_new'
  post "posts", to: 'posts#create', as: 'posts_create'
  get "/users/:id", to: "users#show", as: 'users'
  get "/users/:user_id/posts", to: "posts#index", as: 'user_posts'
  get "/users/:user_id/posts/:id", to: "posts#show", as: 'user_post'
  post 'comments/:user_id/:post_id', to: 'comments#create', as: 'comments_create'
end
