Rails.application.routes.draw do
  root 'services#index'
  resources :services
  resources :posts
  resources :employees
  resources :users
end
