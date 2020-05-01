Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, except: :index
  resources :users, only: :show

  post "likes/:food_id/create", to: "likes#create", constraints: {food_id: /\d+/}, as: :likes_create
  post "likes/:food_id/delete", to: "likes#delete", constraints: {food_id: /\d+/}, as: :likes_delete


end
