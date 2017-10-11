Rails.application.routes.draw do
  	
  post 'friendship/create/:id'=> 'friendships#create',  as: :friendship_create 
  get 'users/find_friends/:id' => 'users#find_friends', as: :user_find_friends
	post 'likes/toggle_comment_like/' => 'likes#toggle_comment_like'
	post 'likes/toggle_post_like/' => 'likes#toggle_post_like'

  get 'comments/create'

  get 'comments/destroy'

  devise_for :users
  get 'users/filter_by_email' => 'users#filter_by_email'
  get 'users/:id' => 'users#show', as: :user_show
  patch 'user/:id' => 'users#update', as: :user
  resources :posts, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]

  root "posts#index"
end
