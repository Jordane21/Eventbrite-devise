Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/private'
  devise_for :users
  resources :events
  get '/events/:id(.:format)', to: 'events#destroy', as: 'destroy_event'
  resources :charges, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
