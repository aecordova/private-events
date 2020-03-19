Rails.application.routes.draw do
  resources: :users, only: [:create, :show]
  get '\signup' to 'users#new'
  
end
