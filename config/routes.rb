Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/update'
  get 'comments/destroy'
  devise_for :users
  root "users#show"
  resources :users, only: %i[show] do
    get 'posts', to: 'users#posts'
    get 'groups', to: 'users#groups'
    resources :groups do
      get 'join', to: 'groups#join'
      get 'leave', to: 'groups#leave'
      resources :posts do
        resources :comments, only: %i[create destroy]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
