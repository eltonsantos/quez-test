Rails.application.routes.draw do
  
  namespace :admin do
    resources :purchases
  end
  
  devise_for :users
  resources :purchases

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
