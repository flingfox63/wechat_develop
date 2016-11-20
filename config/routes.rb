Rails.application.routes.draw do
  root 'users#index'
  resources :users

  get 'session/create'
  get 'session/destroy'
end
