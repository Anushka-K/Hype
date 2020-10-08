Rails.application.routes.draw do
  # get 'props/new'
  # get 'props/show'
  # get 'users/new'
 root 'static_pages#about'
  # get '/home', to: 'static_pages#home'
  # get '/signin', to: 'static_pages#signin'

   get '/addprops', to: 'props#new'
   get '/addusers', to: 'users#new'
  # #get '/signup', to:'users#new'
   get '/allprops', to: 'props#index'
   get '/allusers', to: 'users#index'
  resources :props
  resources :users

end
