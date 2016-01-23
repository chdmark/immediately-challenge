Rails.application.routes.draw do
  
  resources :messages, only: [:index, :create, :show]
  root 'messages#index'

 
end
