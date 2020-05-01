Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show

  post "likes/:post_id/create", to: "likes#create", constraints: {post_id: /\d+/}, as: :likes_create
  post "likes/:post_id/delete", to: "likes#delete", constraints: {post_id: /\d+/}, as: :likes_delete


end
