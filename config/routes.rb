Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :edit, :update, :show] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index, :show, :new, :create]

  resources :categories, only: [:index, :show]

  resources :prefectures, only: [:index, :show]

  resources :newposts, only: [:index, :show]

  resources :recruitments, shallow: true do
    resources :subscriptions, only: [:new, :create, :edit, :update, :show]
  end

  resources :comments, only:[:create,:update,:destroy] do
    member do
      get 'restore'
    end
  end

end
