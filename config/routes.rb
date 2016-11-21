Rails.application.routes.draw do
  root 'users#index'
  resources :users

  get '/auth/:provider/callback', to: 'session#create'
  get 'session/destroy'
end
