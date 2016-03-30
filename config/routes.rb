Rails.application.routes.draw do
  devise_for :users
  resources :food
  root "users#index"
end
