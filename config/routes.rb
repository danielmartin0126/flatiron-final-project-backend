Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :friends
      resources :games
      resources :owned_games
      resources :followed_games
      resources :posts
      resources :comments
      get '/total_followers/:id', to: 'followed_games#total_followers'
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'


    end
  end
end
