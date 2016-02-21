Rails.application.routes.draw do
root 'home#index'
get '/soundcloud/connect', :to => 'soundcloud#connect'
get 'soundcloud/oauth-callback', to: 'soundcloud#connected'
get 'logout', to:'soundcloud#destroy', as: 'logout'
get 'signup', to: 'users#new'
get 'login', to: 'sessions#new'
post 'login', to: "sessions#create"
delete 'logout', to: 'sessions#destroy'
# resources :sessions
resources :users
resources :bands 
end
