Fixed::Application.routes.draw do
  
  resources :finances, :only => [:create, :destroy]   
  resources :users, :admins, :clients

  match '/input', :to => 'users#new'
  match '/show', :to => 'users#index'
  root :to => 'pages#home'


end
