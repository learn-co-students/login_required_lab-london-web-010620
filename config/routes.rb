Rails.application.routes.draw do
  root 'sessions#new'
  get 'secrets/show', to: 'secrets#show'
  resources :sessions, only: [:new, :create]
  post 'sessions/destroy', to: 'sessions#destroy' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
