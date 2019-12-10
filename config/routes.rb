Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  namespace :admin do
      resources :aisles, only: [:new, :create, :show]
    end
end
