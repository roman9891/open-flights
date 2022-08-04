Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug #sets slug as param instead of id
      resources :reviews, only: [:create, :destroy] #creates only create and destroy routes
    end
  end

  get '*path', to: 'pages#index', via: :all
end
