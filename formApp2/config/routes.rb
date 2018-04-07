Rails.application.routes.draw do
  root to: 'form#index'

  get '/test/search', to: 'form#search'
  get '/test/food', to: 'form#dispFood'
  get '/test/disp', to: 'form#dispId'
  get '/params', to: 'form#index'
  post '/params', to: 'form#show'
  get '/disp', to: 'form#dispData'

  get '/user', to: 'user#index'
  get '/user/show', to: 'user#show'
  get '/user/:id/edit', to: 'user#edit'
  delete '/user/:id', to: 'user#destroy'
  patch '/user/:id', to: 'user#update'
  post '/user', to: 'user#create'


end
