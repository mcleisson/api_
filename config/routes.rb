Rails.application.routes.draw do
  resources :users
  resources :urls
  resources :stats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
