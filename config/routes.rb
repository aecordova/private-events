Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show]
  get '/signup', to: 'users#new'
  resources :sessions, only: [:create]
  get '/login', to: 'sessions#new' 
  get '/logout', to: 'sessions#destroy'
  resources :events, only: [:new,:create,:show, :index]

end
