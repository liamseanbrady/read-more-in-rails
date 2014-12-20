ReadMoreInRails::Application.routes.draw do

  root to: 'users#index'

  get '/users', to: 'users#index', as: 'users'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users/:id', to: 'users#update'

end
