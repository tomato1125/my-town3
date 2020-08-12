Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :edit, :update, :show] do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index, :show]

  resources :categories, only: [:index, :show]

  resources :prefectures, only: [:index, :show]

  resources :newposts, only: [:index, :show]

  resources :recruitments, only: [:index, :new, :create, :edit, :update, :show]
end
