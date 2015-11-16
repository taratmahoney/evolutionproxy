Rails.application.routes.draw do
  root 'services#index'
  resources :services
  resources :posts
end
