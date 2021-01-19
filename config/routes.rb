Rails.application.routes.draw do

  get '/posts', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
  post '/posts', to: 'posts#create'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch '/posts/:id', to: 'posts#update'
  patch '/posts/:id/like', to: 'posts#like', as: 'like_post'

  get '/destinations', to: 'destinations#index', as: 'destinations'
  get '/destinations/new', to: 'destinations#new', as: 'new_destination'
  get 'destinations/:id', to: 'destinations#show', as: 'destination'
  post '/destinations', to: 'destinations#create'

  
  get '/bloggers', to: 'bloggers#index', as: 'bloggers'
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  post '/bloggers', to: 'bloggers#create'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'
end
