Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :secrets, :sessions

# get 'sessions/show', to: 'secrets#show'

#method, then url, then to: controller#action

root 'application#show' #root's route is always '/'
get '/secret', to: 'secrets#show'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
post '/logout', to: 'sessions#destroy'

end
