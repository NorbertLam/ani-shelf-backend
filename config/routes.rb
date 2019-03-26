Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  
  get '/animes', to: "animes#index"
  post '/login', to: "auth#create"
  get '/current_user', to: 'auth#show'
  post '/favorites', to: "favorites#create"
  get '/hearts', to: "favorites#show"
end
