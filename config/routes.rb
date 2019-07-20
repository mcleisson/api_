Rails.application.routes.draw do
  resources :users
  resources :urls
  resources :stats

  resources :users do
    member do
      get :stats
      get :urls
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
