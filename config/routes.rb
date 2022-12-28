Rails.application.routes.draw do
  devise_for :users
  root "users#show"
  resources :users, only: %i[show] do
    resources :groups do
      get 'join', to: 'groups#join'
      get 'leave', to: 'groups#leave'
      resources :posts
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
