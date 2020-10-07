Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/signin', to: 'static_pages#signin'
  get '/addprops', to: 'static_pages#addprops'
  get '/signup', to:'static_pages#signup'
  get '/manageprops', to: 'static_pages#manageprops'
  
end
