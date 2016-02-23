Rails.application.routes.draw do
root 'home#index'
get '/soundcloud/connect', :to => 'soundcloud#connect'
get 'soundcloud/oauth-callback', to: 'soundcloud#connected'
get 'logout', to:'soundcloud#destroy', as: 'logout'

get 'signup', to: 'users#new'

get 'login', to: 'sessions#new'
post 'login', to: "sessions#create"
delete 'logout', to: 'sessions#destroy'

get '/bands/users/show/:id', to: 'users#show'

resources :users
resources :bands
resources :bands_members
end
