Rails.application.routes.draw do
  devise_for :users
  resources :tweets do
    member do
      get :heart
    end
  end
  resources :tweets do
    member do
      get :retweet
    end
  end
  resources :tweets do
    member do
      get :reply
    end
  end
  get 'tweets/index'

  root 'tweets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
