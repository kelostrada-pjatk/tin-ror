Rails.application.routes.draw do
  
  post 'users/create'
  get 'users/new'
  get 'users/index'
  get 'users' => 'users#index'
  
  get 'posts/new'
  post 'posts/create'
  get 'posts/index'
  get 'posts' => 'posts#index'

  get 'pages/first'
  get 'pages/second'
  get 'pages/index'
  get 'pages' => 'pages#index'
  
  root :to => 'pages#index'
  
  get 'hello/index'

end
